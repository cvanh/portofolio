import styled from "styled-components";
import React from 'react';

export const MainPhoto = styled.img`
    display:inline-block;
    float: left;
    position: static;
    width: 45%;
    margin-right: 20px; 
    border-radius: 20px;
    @media only screen and (max-width: 868px) {
        backgroud-color: gray;
        width: 100%;
    }
`

export const Article = styled.article`
    padding-top: 65px;
    margin-left:auto;
    margin-right:auto;
    width: 70%;
    @media only screen and (max-width: 868px) {
    width:100%;
    }
`

export const Title = styled.div`
    font-size: xxx-large;
`

export const AboutText = styled.div`
    width: 50%;
    display:inline-block;
`

