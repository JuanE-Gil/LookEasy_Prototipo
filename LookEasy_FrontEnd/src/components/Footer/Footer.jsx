import React from 'react';
import './Footer.css';

const Footer = () => {
    return (
        <footer className='d-flex flex-wrap justify-content-between align-items-center py-3 border-top'>
            <div className='col-md-4 d-flex align-items-center'>
                <a
                    href='https://github.com/JuanE-Gil/Look_Easy.git'
                    className='mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1'>
                    <i className='bi bi-camera-reels text-white me-2'></i>
                    <span className='text-white me-2'>
                        <strong>Look - Easy </strong>
                        &copy; 2023
                    </span>
                </a>
            </div>
            <ul className='nav col-md-4 justify-content-end list-unstyled d-flex'>
                <li className='ms-3'>
                    <a
                        className='text-white'
                        href='https://github.com/JuanE-Gil/Look_Easy.git'
                        target='_blank'
                        rel='noopener noreferrer'>
                        <i class='bi bi-github'></i>
                    </a>
                </li>
                <li className='ms-3'>
                    <a
                        className='text-white'
                        href='#'
                        target='_blank'
                        rel='noopener noreferrer'>
                        <i className='bi bi-twitter'></i>
                    </a>
                </li>
                <li className='ms-3'>
                    <a className='text-white' href='#'>
                        <i className='bi bi-instagram'></i>
                    </a>
                </li>
                <li className='ms-3'>
                    <a className='text-white' href='#'>
                        <i className='bi bi-facebook'></i>
                    </a>
                </li>
            </ul>
        </footer>
    );
};

export default Footer;
