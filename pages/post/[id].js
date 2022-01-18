import Header from "../../components/header/Header";
import { useRouter } from 'next/router'
import Container from "../../styled/container";


function Page({ data }) {
    console.log(data);
    return (
    <>
      <Header/>
      <Container>
          <img src={data.tumbnail}></img>
          <div>date: {data.date}</div>
          <div>{data.title}</div>
          <p>{data.body}</p>
      </Container>
    </>
  );
}
Page.getInitialProps = async ({query}) => {
  const res = await fetch(`http://localhost:3000/api/crud/GetPost/${query.id}`);
  const json = await res.json();
  return { data: json[0] }; // the [0] is to convert the array to only a object
};

export default Page;    