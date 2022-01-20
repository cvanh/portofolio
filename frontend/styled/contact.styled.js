import styled from "styled-components";

export const ContactForm = styled.form`
  padding-top: 65px;
  //
  margin-left: auto;
  margin-right: auto;
  width: 45%;
  @media only screen and (max-width: 868px) {
    width: 100%;
  }

  button {
    margin-top: 10px;
    height: 20px;
    min-width: 6%;
    border: 1px solid black;
    border-radius: 4px;
    background: none;
    transition: none;
  }
    button:active  {
      /* transition: color 0.3s; */
      color: orange;
      height: 25px;
      width: 7%;
    }
    /* button:hover {
      /* transition: size 0.3s; */
      /* color: gray; */
    } */
`

export const Input = styled.input`
  display: block;
  height: 20px;
  width: 25%;
  margin-right: auto;
  margin-left: auto;
  margin-bottom: 10px;
`;

export const Content = styled.textarea`
  resize: none;
  width: 25%;
  margin-right: auto;
  margin-left: auto;
  margin-bottom: 10px;
`;
