import React, {Suspense} from 'react';
import logo from './logo.svg';
import './App.css';

// import User from "./User";

const User = React.lazy(() => import('./User'));

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={`${process.env.REACT_APP_CONTENT_HOST}${logo}`} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer">
          <Suspense fallback={'Loading...'}>
            <User />
          </Suspense>
        </a>
      </header>
    </div>
  );
}

export default App;
