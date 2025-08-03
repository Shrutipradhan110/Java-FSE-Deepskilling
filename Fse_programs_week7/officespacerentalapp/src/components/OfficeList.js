import React from 'react';

const OfficeList = () => {
  // Office object list
  const offices = [
    {
      id: 1,
      name: "Orchid Business Tower",
      rent: 55000,
      address: "Banjara Hills, Hyderabad",
      image: process.env.PUBLIC_URL + "/orchid.png"
    },
    {
      id: 2,
      name: "TechSpace One",
      rent: 72000,
      address: "Whitefield, Bangalore",
      image: process.env.PUBLIC_URL + "/techspace.jpg"
    },
    {
      id: 3,
      name: "Skyline Corporate",
      rent: 60000,
      address: "Cyberabad, Hyderabad",
      image: process.env.PUBLIC_URL + "/skyline.avif"
    }
  ];

  // JSX rendering
  return (
    <div>
      <h1 style={{ textAlign: 'center', color: '#333' }}>Office Space Rental</h1>

      {offices.map((office) => (
        <div key={office.id} style={{ border: '1px solid #ddd', padding: '16px', margin: '16px' }}>
          <img src={office.image} alt={office.name} style={{ width: '300px', height: '200px' }} />
          <h2>{office.name}</h2>
          <p><strong>Address:</strong> {office.address}</p>
          <p>
            <strong>Rent:</strong>{' '}
            <span style={{ color: office.rent > 60000 ? 'green' : 'red' }}>
              ₹{office.rent}
            </span>
          </p>
        </div>
      ))}
    </div>
  );
};

export default OfficeList;
