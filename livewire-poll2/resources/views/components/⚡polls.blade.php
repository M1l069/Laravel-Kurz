<?php

use App\Models\Option;
use Livewire\Component;
use App\Models\Poll;
use Livewire\Attributes\On;

new class extends Component {
    /*    protected $listeners = [
            'pollCreated' => 'render'
        ]; -> stary zapis*/
    #[On('pollCreated')] // novy zapis
    public function render()
    {
        $polls = Poll::with('options.votes')->latest()->get();
        return view('components.⚡polls', ['polls' => $polls]);
    }

    public function vote(Option $option): void {
        $option->votes()->create();
    }
};
?>

<div>
    @forelse($polls as $poll)
        <div class="mb-4">
            <h3 class="mb-4 text-xl"> {{ $poll->title }}</h3>
            @foreach($poll->options as $option)
                <div class="mb-2">
                    <button class="btn" wire:click="vote({{ $option->id }})"> Hlasovať </button>
                    {{ $option->name }} ({{ $option->votes->count() }})
                </div>
            @endforeach
        </div>
    @empty
        <div class="text-gray-500">Žiadne dostupné ankety</div>
    @endforelse
</div>
