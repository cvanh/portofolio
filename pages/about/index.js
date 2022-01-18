import { container } from "@xstyled/styled-components";
import Header from "../../components/header/Header";
import SocialBar from "../../components/socialbar/socialbar"
import {
  Title,
  MainPhoto,
  Article,
  AboutText
} from "../../styled/about.styled";

function About() {
  return (
    <>
      <Header />
      <container>
        <Article>
          <Title>Constantijn van Hartesveldt</Title>
          <AboutText>
            Ik ben Constantijn van Hartesveldt
            <br />
            Je kan mij altijd vinden in de volgende sprint van een project wat 3
            minuten daarvoor verzonnen had.
            <br />
            Ik ben ervaren in javascript en php, ik ben bekend met de principes
            van scrum en mysql en mongodb
          </AboutText>
          <MainPhoto src="/kokenmetconto.png" />
          <SocialBar/>
          
        </Article>
      </container>
    </>
  );
}
export default About;
