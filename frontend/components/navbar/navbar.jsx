import React, { useState } from 'react';
import Button from './button';
import { Link } from 'react-router-dom';
import Dropdown from './dropdown';

function Navbar () {
  const [click, setClick] = useState(false);
  const [dropdown, setDropdown] = useState(false);

  const handleClick = () => setClick(!click);
  const closeMobileMenu = () => setClick(false);

  const onMouseEnter = () => {
    window.innerWidth < 960 ? setDropdown(false) : setDropdown(true);
  };

  const onMouseLeave = () => {
    window.innerWidth < 960 ? setDropdown(false) : setDropdown(false);
  };
  

  return (
    <>
      <nav className="navbar">
        <Link to="/" className="navbar-logo">
          Yes Indeed
          <i class='fab fa-firstdraft' />
        </Link>
        <div className="menu-icon" onClick={handleClick}>
          <i className={click ? 'fas fa-times' : 'fas fa-bars'} />
        </div>
        <ul className={click ? 'nav-menu active' : 'nav-menu'}>
          <li className='nav-item'>
            <Link to='/' className='nav-links' onClick={closeMobileMenu}>
              All Jobs
            </Link>
          </li>
          <li className='nav-item'
              // onMouseEnter={onMouseEnter}
              // onMouseLeave={onMouseLeave}
          >
            <Link to='/categories' className='nav-links' onClick={closeMobileMenu}>
              Categories <i className='fas fa-caret-down' />
            </Link>
            {dropdown && <Dropdown />}
          </li>
          <li className='nav-item'>
            <Link to='/discord' className='nav-links' onClick={closeMobileMenu}>
              Discord
            </Link>
          </li>
          <li className='nav-item'>
            <Link to='/' className='nav-links-mobile' onClick={closeMobileMenu}>
              Post a job
            </Link>
          </li>
        </ul>
        <Button></Button>
      </nav>
    </>
  );
}

export default Navbar;