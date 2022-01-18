import { Text, Bar, Social } from "./socialbar.styled";
import Link from "next/link";

function SocialBar(props) {
  return (
    <Bar>
      <Text>{props.children}</Text>
      <Link href="mailto: constantijn@vanhartesveldt.nl">
        <Social src="/icons/email.svg" />
      </Link>
      <Link href="/pgp.txt">
        <Social src="/icons/pgp.svg" />
      </Link>
      <Link href="https://www.linkedin.com/in/constantijnvanhartesveldt/">
        <Social src="/icons/linkdin.svg" />
      </Link>
      <Link href="https://github.com/cvanh">
        <Social src="/icons/github.svg" />
      </Link>
      <Link href="https://t.me/Constantijn123">
        <Social src="/icons/telegram.svg" />
      </Link>
    </Bar>
  );
}

export default SocialBar;