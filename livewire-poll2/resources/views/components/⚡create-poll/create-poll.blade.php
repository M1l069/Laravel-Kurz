
<div>
    <form action="">
        <label for="">Poll Title</label>
        <input type="text" wire:model.live="title">
        Current title: {{ $title }}
        <div class="mt-4 mb-4">
            <button class="btn" wire:click.prevent="addOption()"> Pridať možnosť</button>
        </div>

        <div>
        @foreach($options as $index => $option)
            <div class="mb-4">
                <label for="">Option {{ $index + 1 }}</label>
                <div class="flex gap-2">
                    <input type="text" wire:model="options.{{ $index }}">
                    <button class="btn" wire:click.prevent="removeOption({{ $index }})">Odstrániť</button>
                </div>
            </div>
        @endforeach
        </div>
    </form>
</div>
