import React, { useState } from 'react';
import Guest from './Guest';
import User from './User';

function LoginControl() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  const handleLogin = () => setIsLoggedIn(true);
  const handleLogout = () => setIsLoggedIn(false);

  let button;
  let page;

  if (isLoggedIn) {
    button = <button onClick={handleLogout}>Logout</button>;
    page = <User />;
  } else {
    button = <button onClick={handleLogin}>Login</button>;
    page = <Guest />;
  }

  return (
    <div>
      {button}
      {page}
    </div>
  );
}

export default LoginControl;
