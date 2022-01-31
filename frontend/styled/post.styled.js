import styled from "styled-components";

export const Image = styled.img`
    width: 100%;   
    @media only screen and (min-width: 1500px) {
        width: 40%;
    } 
`

export const Post = styled.div`
    padding-top:100px;
    width: 50%;
    margin: auto;
    @media only screen and (max-width: 868px) {
        width: 100%;
    }
    @media only screen and (min-width: 1500px) {
        width: 40%;
    }
`

export const Date = styled.div`
    font-size: smaller;
`