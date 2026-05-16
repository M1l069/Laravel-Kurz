<?php

use App\Models\Poll;
use Livewire\Component;
use Ds\Set;

new class extends Component
{
    public $title;
    public $options = ['first'];
    protected $rules = [
        'title' => 'required|min:3|max:255',
        'options' => 'required|array|min:1|max:10',
        'options.*' => 'required|min:1|max:255',
    ];

    protected $messages = [
        'options.*' => "Možnosť nemôže byť prázdna."
    ];

    public function updated($propertyName): void {
        $this->validateOnly($propertyName);
    }


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
        $this->validate();

        Poll::create([
            'title' => $this->title
        ])->options()->createMany(
            collect($this->options)->map(fn ($option) => ['name' => $option])->all()
        );

//        foreach($this->options as $optionName) {
//            $poll->options()->create(['name' => $optionName]);
//        }

        $this->reset(['title', 'options']);

        $this->dispatch('pollCreated');
    }


};
