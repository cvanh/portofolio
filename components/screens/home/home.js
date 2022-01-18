import Container from "../../../styled/container.js";
import { Field, Card, Tumbnail, CardBig, Main } from "./home.styled.js";

function Home({ data }) {
  return (
    <Container>
      <h1>some of my work</h1>
      <Field>
        {data.map((i) => {
          PostCount++;
          if (PostCount === 1) {
            // this is the first card so it will be extra big
            return (
              <Link href={`/post/${i.id}`}>
                <CardBig key={i.id} href={`/post/${i.id}`}>
                  <Tumbnail src={i.tumbnail} />
                  {/* <div key={i.id}>{i.id}</div> */}
                  <div id={i.title}>{i.title}</div>
                </CardBig>
              </Link>
            );
          } else {
            return (
              <Link href={`/post/${i.id}`}>
                <Card key={i.id} href={`/post/${i.id}`}>
                  <Tumbnail src={i.tumbnail} />
                  {/* <div>{i.id}</div> */}
                  <div>{i.title}</div>
                </Card>
              </Link>
            );
          }
        })}
      </Field>
    </Container>
  );
}

Home.getInitialProps = async (ctx) => {
    const res = await fetch("http://localhost:3000/api/crud/GetPosts?limit=10");
    const json = await res.json();
    return { data: json };
  };

export default Home