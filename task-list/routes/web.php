<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Task;
use App\Http\Requests\TaskRequest;

Route::get('/', function () /*use ($tasks)*/ {
    //return view('index', ["tasks" => $tasks]);
    return view("welcome");
});
// zobrazenie vsetkych uloh
Route::get("/tasks", function () {
    return view("index", ["tasks"=> Task::latest('updated_at')/*->where("completed", true)->get()*/->paginate(10)]);
})->name("tasks.index");

// Route::get("/{id}", function ($id) {
//     return view("task", ["id" => $id]);
// // })-> name("tasks.show");

// zobrazenie formularu na pridanie ulohy
Route::view("/tasks/create", "create")->name('tasks.create');

//zobrazenie konkretnej ulohy
Route::get("/tasks/{task}", function (Task $task) {
   return view("show", ["task" => $task]); /* return view("show", ["task" => \App\Models\Task::find($id)]);*/
})-> name("tasks.show");

//zobrazenie formularu na upravu ulohy
Route::get("/tasks/{task}/edit", function (Task $task) {
   return view("edit", ["task" => $task]); /* return view("show", ["task" => \App\Models\Task::find($id)]);*/
})-> name("tasks.edit");

//vytvorenie novej ulohy
Route::post("/tasks", function(TaskRequest $request){
    //dd($request->all());
    // $data = $request->validated();

    // $task = new Task;
    // $task->title = $data['title'];
    // $task->description = $data['description'];
    // $task->long_description = $data['long_description'];
    // $task->save();
    $task = Task::create($request->validated());


    return redirect()->route('tasks.show', ['task' => $task->id])->with('success', 'Úloha úspešne vytvorená!');
})->name("tasks.store");

//uprava ulohy
Route::put("/tasks/{task}", function(Task $task, TaskRequest $request){
    //dd($request->all());
    // $data = $request->validated();

    // $task->title = $data['title'];
    // $task->description = $data['description'];
    // $task->long_description = $data['long_description'];
    // $task->save();
    $task->update($request->validated());

    return redirect()->route('tasks.show', ['task' => $task->id])->with('success', 'Úloha úspešne upravená!');
})->name("tasks.update");

Route::delete("/tasks/{task}", function(Task $task) {
    $task->delete();
    return redirect()->route('tasks.index')->with('success', 'Úloha úspešne vymazaná!');
})->name('tasks.destroy');

Route::put('tasks/{task}/toggle-complete', function(Task $task){
    $task->toggleComplete();
    return redirect()->back()->with('success', 'Úloha úspešne upravená!');
})->name('tasks.toggle-complete');
