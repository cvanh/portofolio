import Link from "next/link";
import Footer from "../components/footer/footer";
import Header from "../components/header/Header";
import Container from "../styled/container";
import {Field,
  Card,
  Tumbnail,
  CardBig, 
  Main} from "../components/screens/home/home.styled.js";
import Home from "../components/screens/home";

function Page({ data }) {
  let PostCount = 0; //
  return (
    <>
      <Header />
        <Home/>
      <Footer/>
    </>
  );
}
Page.getInitialProps = async (ctx) => {
  const res = await fetch("http://localhost:3000/api/crud/GetPosts?limit=10");
  const json = await res.json();
  return { data: json };
};

export default Page;
