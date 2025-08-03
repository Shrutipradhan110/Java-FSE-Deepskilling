import React from 'react';
import Counter from './components/Counter';
import WelcomeButton from './components/WelcomeButton';
import SyntheticEvent from './components/SyntheticEvent';
import CurrencyConvertor from './components/CurrencyConvertor';

function App() {
  return (
    <div className="App">
      <h1>React Event Examples</h1>
      <Counter />
      <hr />
      <WelcomeButton />
      <hr />
      <SyntheticEvent />
      <hr />
      <CurrencyConvertor />
    </div>
  );
}

export default App;
