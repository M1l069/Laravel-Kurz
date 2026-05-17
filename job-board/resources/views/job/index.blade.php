<x-layout>
    @foreach($jobs as $job)
        <div>
        <div>{{ $job->title }}</div>
        </div>
    @endforeach
</x-layout>
