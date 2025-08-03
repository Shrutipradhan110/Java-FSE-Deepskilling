import React, { useState } from 'react';
import ListofPlayers from './components/ListofPlayers';
import IndianPlayers from './components/IndianPlayers';

function App() {
  const [flag, setFlag] = useState(true);

  return (
    <div className="App">
      <h1>🏏 Welcome to CricketApp</h1>
      <button onClick={() => setFlag(!flag)}>
        Toggle View (Current: {flag ? "ListofPlayers" : "IndianPlayers"})
      </button>
      
      {flag ? <ListofPlayers /> : <IndianPlayers />}
    </div>
  );
}

export default App;
