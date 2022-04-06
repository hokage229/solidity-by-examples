//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({text: _text, completed: false}));
    }

    function updateText(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;

        // Todo storage todo = todos[_index];
        // todo.text = _text;
    }

    function get(uint256 _index) external view returns (string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggle(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
