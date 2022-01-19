import Header from "../../components/header/Header";
import { useRouter } from 'next/router'
import Container from "../../styled/container";
import { Date,Image, Post } from "../../styled/post.styled";


function Page({ data }) {
    console.log(data);
    return (
    <>
      <Header/>
      <Container>
      <Post>
          <Image alt={data.title} src={data.tumbnail}/>
          <Date>posted on: {data.date}</Date>
          <div>{data.title}</div>
          <p>{data.body}</p>
        </Post>
      </Container>
    </>
  );
}
Page.getInitialProps = async ({query}) => {
  const id = parseInt(query.id)
  const res = await fetch(`http://localhost:3000/api/crud/GetPost/${id}`);
  const json = await res.json();
  return { data: json[0] }; // the [0] is to convert the array to only a object
};

export default Page;    