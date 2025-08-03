import React, { useState } from 'react';

const CurrencyConvertor = () => {
  const [rupees, setRupees] = useState('');
  const [euros, setEuros] = useState(null);

  const handleSubmit = (event) => {
    event.preventDefault();
    const euro = parseFloat(rupees) * 0.011; // Example conversion rate
    setEuros(euro.toFixed(2));
  };

  return (
    <div>
      <h2>Currency Convertor</h2>
      <form onSubmit={handleSubmit}>
        <label>
          Amount in ₹:
          <input
            type="number"
            value={rupees}
            onChange={(e) => setRupees(e.target.value)}
            required
          />
        </label>
        <button type="submit">Convert</button>
      </form>
      {euros !== null && (
        <p>Converted Amount in Euro: €{euros}</p>
      )}
    </div>
  );
};

export default CurrencyConvertor;
