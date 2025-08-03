import React from 'react';

const SyntheticEvent = () => {
  const handleClick = (event) => {
    event.preventDefault(); // Synthetic Event
    alert("I was clicked");
  };

  return (
    <div>
      <button onClick={handleClick}>Synthetic OnPress</button>
    </div>
  );
};

export default SyntheticEvent;
