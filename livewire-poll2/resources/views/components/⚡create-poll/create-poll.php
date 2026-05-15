<?php

use Livewire\Component;
use Ds\Set;

new class extends Component
{
    public $title;
    public $options = ['first'];

    // bude volana len raz napr. na citanie z db
//    public function mount($title) {}

    public function addOption() {
        $this->options[] = ''; //pridanie nového členu na koniec arrayu
    }

    public function removeOption($index) {
        unset($this->options[$index]);
        $this->options = array_values($this->options);
    }
};
