import React from 'react';
import ReactDOM from 'react-dom'; 

const App = () => (
    <div>
        Hello, World!
    </div>
);

document.addEventListener("DOMContentLoaded", () => {
    ReactDOM.render(
        <App />,
        document.getElementById('root')
    );
});