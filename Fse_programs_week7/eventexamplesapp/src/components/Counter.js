import React, { useState } from 'react';

function App() {
  const [count, setCount] = useState(1);
  const [amount, setAmount] = useState('');
  const [currency, setCurrency] = useState('Euro');

  const handleIncrement = () => setCount(count + 1);
  const handleDecrement = () => setCount(count - 1);
  const handleWelcome = () => alert("Welcome to Currency Converter!");
  const handleClickMe = () => alert("You clicked me!");

  const handleSubmit = (e) => {
    e.preventDefault();
    let converted = 0;
    if (currency === 'Euro') {
      converted = amount * 80;
    } else if (currency === 'Dollar') {
      converted = amount * 75;
    } else if (currency === 'Yen') {
      converted = amount * 0.65;
    }

    alert(`Converting to ${currency} Amount is ${converted}`);
  };

  const headingStyle = {
    color: "green",
    fontSize: "30px",
    fontWeight: "bold"
  };

  return (
    <div>
      <p>{count}</p>
      <button onClick={handleIncrement}>Increment</button>
      <button onClick={handleDecrement}>Decrement</button>
      <button onClick={handleWelcome}>Say welcome</button>
      <button onClick={handleClickMe}>Click on me</button>

      <h1 style={headingStyle}>Currency Convertor!!!</h1>

      <form onSubmit={handleSubmit}>
        <label>
          Amount:
          <input
            type="number"
            value={amount}
            onChange={(e) => setAmount(e.target.value)}
            required
          />
        </label>
        <br />
        <label>
          Currency:
          <select
            value={currency}
            onChange={(e) => setCurrency(e.target.value)}
          >
            <option value="Euro">Euro</option>
            <option value="Dollar">Dollar</option>
            <option value="Yen">Yen</option>
          </select>
        </label>
        <br />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
}

export default App;
