<?php

use App\Models\Poll;
use Livewire\Component;
use Ds\Set;

new class extends Component
{
    public $title;
    public $options = ['first'];

    // bude volana len raz napr. na citanie z db
//    public function mount($title) {}

    public function addOption(): void {
        $this->options[] = ''; //pridanie nového členu na koniec arrayu
    }

    public function removeOption($index): void {
        unset($this->options[$index]);
        $this->options = array_values($this->options);
    }

    public function createPoll(): void {
        $poll = Poll::create([
            'title' => $this->title
        ]);

        foreach($this->options as $optionName) {
            $poll->options()->create(['name' => $optionName]);
        }

        $this->reset(['title', 'options']);
    }
};
