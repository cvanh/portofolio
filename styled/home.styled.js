import styled from "styled-components";

export const Card = styled.div`
  border: 1px black solid;
  border-radius: 4px;
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  overflow: hidden;
`;

export const CardBig = styled.div`
  border: 1px black solid;  
  border-radius: 4px;
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  grid-column-start: 1;
  grid-column-end: 3;
  overflow: hidden;
  ::selection {
    color: none;
    background: none;
  }
`;

export const Tumbnail = styled.img`
  margin-top: -20px;
  width: 100%;
  height: 60%;
`;

export const Field = styled.div`
  // this is where all the post cards are stored
  justify-content: center;
  display: grid;
  grid-template-columns: 15% 15% 15%;
  grid-gap: 10px;
  padding: 10px;


  @media only screen and (max-width: 768px) {
    grid-template-columns: 33% 33%;
    /* width: 100%; */
  }
`;
