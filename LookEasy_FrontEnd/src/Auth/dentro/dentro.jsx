import { Link, NavLink } from 'react-router-dom';
import './LoginPublic.css';
import React, { useState, useEffect } from 'react';
import AuthService from '../../services/auth.service';
import EventBus from '../../common/EventBus';
import * as FaIcons from 'react-icons/fa';
import style from './LoginPublic.css';

export const Dentro = () => {
    const [currentUser, setCurrentUser] = useState(undefined);

    useEffect(() => {
        const user = AuthService.getCurrentUser();

        if (user) {
            setCurrentUser(user);
        }

        EventBus.on('logout', () => {
            logOut();
        });

        return () => {
            EventBus.remove('logout');
        };
    }, []);

    const logOut = () => {
        AuthService.logout();
        setCurrentUser(undefined);
    };

    return (
        <>
            {currentUser ? (
                <div className='d-flex'>
                    <button type='button' className='btn_login me-3'>
                        <i className='bi bi-person-circle p-2'></i>
                        <NavLink
                            to='/profile'
                            style={{
                                color: 'white',
                                textDecoration: 'none',
                            }}
                            onClick={logOut}>
                            Perfil
                        </NavLink>
                    </button>

                    <button type='button' className='btn_login'>
                        <i className='bi bi-box-arrow-right p-2' />
                        <NavLink
                            to='/'
                            style={{
                                color: 'white',
                                textDecoration: 'none',
                            }}
                            onClick={logOut}>
                            LogOut
                        </NavLink>
                    </button>
                </div>
            ) : (
                <div>
                    <button
                        type='button'
                        className='btn_login'
                        style={{
                            background: '#0000ff',
                            border: '2px solid #0d0db6',
                            borderBottom: '4px solid #0d0db6',
                            fontSize: '16px',
                            cursor: 'pointer',
                            borderRadius: ' 0 5px 5px 0',
                        }}>
                        <i className='bi bi-person-circle p-2'></i>
                        <NavLink
                            to='/form'
                            style={{
                                color: 'white',
                                textDecoration: 'none',
                            }}>
                            Iniciar Sesión
                        </NavLink>
                    </button>
                </div>
            )}
        </>
    );
};
export default Dentro;
