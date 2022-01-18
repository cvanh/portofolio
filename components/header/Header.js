import Head from "./Head.styled";
import LogoFoto from "../../public/logo.png";
import Link from "next/link";

function Header() {
  return (
    <Head.Header>
      
      <Head.Logo></Head.Logo>

      <Head.Links>
        <Link href="/">
          <Head.LinkBox>home</Head.LinkBox>
        </Link>
        <Link href="/about/">
          <Head.LinkBox>about</Head.LinkBox>
        </Link>
        <Link href="/contact/">
          <Head.LinkBox>contact</Head.LinkBox>
        </Link>
        <Link href="/admin/">
          <Head.LinkBox>login</Head.LinkBox>
        </Link>
      </Head.Links>
    </Head.Header>
  );
}
export default Header;
