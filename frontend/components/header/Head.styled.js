import styled from "styled-components";
import LogoFoto from "../../public/logo.png";

const Header = styled.header`
  width: 100%;
  min-height: 20px;
  background-color: gray;
  display: inline-block;
  /* position: fixed; */
  border-bottom: 1px black solid;
`;

const Links = styled.div`
  float: right;
  display: inline-flex;
`;

const LinkBox = styled.div`
  vertical-align: middle;
  border: 1px solid black;
  margin-right: 5px; 
  height: 50px;
  width: 50px;
  text-align: center;
  border-radius: 5px;
`;

// const Logo = styled.img`
//   width: 50px;
//   height: 30px;
// `
const Logo = styled.img.attrs({ 
  src: "/logo.png",
})`
  width: 100px;
  height: 60px;
  
`;

export const Track = styled.img.attrs({ 
  src: "http://83.162.165.175/portofolio/backend/src/tracking/png/github.php?code=portofolio",
})`
  margin-right: 10px;
  height: 60px;
  width: 25%;
  @media only screen and (max-width: 868px) {
    width:100%;
    }
`;

const Head = {
  Logo,
  LinkBox,
  Links,
  Header,
};


export default Head;
