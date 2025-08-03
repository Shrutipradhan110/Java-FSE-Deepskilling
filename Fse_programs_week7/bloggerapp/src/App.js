import React, { useState } from 'react';
import CourseDetails from './components/CourseDetails';
import BookDetails from './components/BookDetails';
import BlogDetails from './components/BlogDetails';

function App() {
  const [showCourses, setShowCourses] = useState(true);
  const [showBooks, setShowBooks] = useState(true);
  const [showBlogs, setShowBlogs] = useState(true);

  return (
    <div style={{ display: 'flex', justifyContent: 'space-around', padding: '50px' }}>
      {/* Conditional rendering using && */}
      {showCourses && <CourseDetails />}

      {/* Conditional rendering using ternary operator */}
      {showBooks ? <BookDetails /> : null}

      {/* Conditional rendering using if statement */}
      {(() => {
        if (showBlogs) {
          return <BlogDetails />;
        }
      })()}
    </div>
  );
}

export default App;
