import React from 'react';

const WelcomeButton = () => {
  const sayWelcome = (message) => {
    alert(message);
  };

  return (
    <div>
      <button onClick={() => sayWelcome("Welcome to the React World!")}>Say Welcome</button>
    </div>
  );
};

export default WelcomeButton;
