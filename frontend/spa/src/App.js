import React, { useState } from 'react';
import { BrowserRouter as Router, Route, Redirect } from 'react-router-dom';
import logo from './logo.svg';
import './App.css';

const env = process.env.NODE_ENV || 'development';

const API_ROOT_URL = (env === 'development') ? 'http://localhost:3000/api' : '/api';

const LOCAL_URL = {
  "ROOT": "/",
  "HOME": "/app/spa",
  "MAIN": "/app/spa/main",
}

const App = () => {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="app/spa"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

const ResultPage = ({result}) => (
  !result ?
  <h1>Hello World</h1>
  :
  <>
    <h1>{`URL: ${API_ROOT_URL}`}</h1>
    <h2>{`Size: ${result.size}`}</h2>
    { result.data.map((item) => (
      <p key={item.id}>{`${item.id} ${item.name} ${item.tree_path}`}</p>
    ))}
  </>
)

const MainPage = () => {
  const [theResult, setResult] = useState(null);

  const fetchData = async () => {
    const response = await fetch(API_ROOT_URL);
    const result = await response.json();
    console.log({response, result});
    setResult(result);
  } 

  return (
    !theResult ? 
    <button onClick={fetchData} >fetch</button>
    :
    <ResultPage result={theResult} />
  )
}

const AppRoute = () => {
  return (
    <>
      <Route path={LOCAL_URL['MAIN']}         component={MainPage} />
      <Route path={LOCAL_URL['ROOT']} exact   component={App} />
      <Route path={LOCAL_URL['HOME']} exact   component={() => <Redirect to={{pathname: LOCAL_URL['MAIN']}} /> } />
    </>
  );
}

export default () => (
  <Router>
    <Route component={AppRoute}/>
  </Router>
)
