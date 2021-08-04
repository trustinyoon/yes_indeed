import React from 'react';
import { Link } from 'react-router-dom';

const Button = () => (
  <Link to="post-job">
    <button className="btn">Post a job</button>
  </Link>
);

export default Button;