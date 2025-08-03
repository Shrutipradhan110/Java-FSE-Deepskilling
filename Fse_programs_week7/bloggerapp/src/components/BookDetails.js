import React from 'react';

function BookDetails() {
  const books = [
    { name: 'Master React', price: 670 },
    { name: 'Deep Dive into Angular 11', price: 800 },
    { name: 'Mongo Essentials', price: 450 }
  ];

  return (
    <div style={{ borderRight: '4px solid green', paddingRight: '20px', paddingLeft: '20px' }}>
      <h2>Book Details</h2>
      {books.map((book, index) => (
        <div key={index}>
          <h3>{book.name}</h3>
          <p>{book.price}</p>
        </div>
      ))}
    </div>
  );
}

export default BookDetails;
