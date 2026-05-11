<?php

namespace App\Console\Commands;

use App\Models\Event;
use App\Notifications\EventReminderNotification;
use Illuminate\Console\Attributes\Description;
use Illuminate\Console\Attributes\Signature;
use Illuminate\Console\Command;
use Illuminate\Support\Str;

#[Signature('app:send-event-reminders')]
#[Description('Sends notifications to all event attendees that event starts soon')]
class SendEventReminders extends Command
{
    /**
     * Execute the console command.
     */
    public function handle()
    {
        $events = Event::with('attendees.user')
            ->whereBetween('start_time', [now(), now()->addDay()])->get();
        $eventCount = $events->count();

        if ($eventCount === 1) {
            $eventLabel = 'udalosť';
        }
        elseif ($eventCount >= 2 && $eventCount <= 4) {
            $eventLabel = 'udalosti';
        }
        else {
            $eventLabel = 'udalostí';
        }


        $this->info("Našlo sa {$eventCount} {$eventLabel}.");

        $events->each(
            fn ($event) => $event->attendees->each(
                fn ($attendee) => $attendee->user->notify(
                    new EventReminderNotification($event)
                )
            )
        );

        $this->info('Reminder notifications sent successfully!');
    }
}
