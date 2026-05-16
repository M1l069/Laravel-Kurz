
<div>
    <form wire:submit.prevent="createPoll">
        <label for="">Poll Title</label>
        <input type="text" wire:model.live="title" class="{{ $errors->has("title") ? 'border-red-500' : '' }}">
        @error('title')
        <div class="text-red-500">
            {{ $message }}
        </div>
        @enderror
        <div class="mt-4 mb-4">
            <button class="btn" wire:click.prevent="addOption()"> Pridať možnosť</button>

        </div>

        <div>
        @foreach($options as $index => $option)
            <div class="mb-4">
                <label for="">Option {{ $index + 1 }}</label>
                <div class="flex gap-2">
                    <input type="text" wire:model.live="options.{{ $index }}" class="{{ $errors->has("options.$index") ? 'border-red-500' : '' }}">
                    <button class="btn" wire:click.prevent="removeOption({{ $index }})">Odstrániť</button>
                </div>
                @error("options.$index")
                <div class="text-red-500 ">
                    {{ $message }}
                </div>
                @enderror
            </div>

        @endforeach
        </div>
        <button type="submit" class="btn">Vytvoriť anketu</button>
    </form>
</div>
