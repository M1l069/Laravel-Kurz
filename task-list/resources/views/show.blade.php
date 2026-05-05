@extends("layouts.app")

@section("title", $task->title)

@section("content")
    <div class="mb-4">
        <a href="{{ route('tasks.index') }}" class="link"> ← Naspäť na zoznam úloh</a>
    </div>
    <p class="mb-4"> <span class="text-slate-700">Stručný popis:</span> {{ $task->description }}</p>
    @if ($task->long_description)
        <p class="mb-4"> <span class="text-slate-700">Popis: </span> {{ $task->long_description }}</p>
    @endif
    <p class="mb-4 text-sm text-slate-500"> Vytvorená {{ $task->created_at->diffForHumans() }} | Upravená {{ $task->updated_at->diffForHumans() }}</p>

    <p class="mb-4">
        @if ($task->completed)
           <span class="font-medium text-green-500">Dokončená</span>
        @else
            <span class="font-medium text-red-700">Nedokončená</span>
        @endif
    </p>

    <div class="flex gap-2">
        <a href="{{ route('tasks.edit', ['task'=> $task]) }}" class="btn">Upraviť</a>

        <form method="POST" action="{{ route('tasks.toggle-complete', ['task' => $task]) }}">
            @csrf
            @method('PUT')
            <button type="submit" class="btn">
                Označiť ako {{$task->completed ? 'nedokončené' : 'dokončené'}}
            </button>

        </form>

        <form action="{{ route('tasks.destroy', ['task'=> $task]) }}" method="POST">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn">Vymazať</button>
        </form>
    </div>
@endsection
