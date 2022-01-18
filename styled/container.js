import styled, { css } from "styled-components";
import { space } from "styled-system";
import { Box } from "./Flex";
import { media, px2rem } from "../utils";
import theme from "../utils/theme";

const Container = styled(Box)`
  margin: 0px;
  @font-face {
  font-family: 'Roboto Condensed';
  src: url(/fonts/DarkerGrotesque-Regular.ttf) format('tff'),
       url(/fonts/DarkerGrotesque-Regular.ttf) format('tff');
  }


  width: 100%;
  max-width: ${(props) => props.theme.gridSize};
  background-color: ${(props) =>
    props.withBackground ? props.theme.colors.red : "transparent"};
  ${media.smallOnly &&
  css`
    ${(props) =>
      !props.noPadding &&
      css`
        padding-left: ${props.theme.pageGap};
        padding-right: ${props.theme.pageGap};
      `}
  `}
  ${(props) =>
    props.noPaddingRight &&
    `
    padding-right: 0;
  `}
`;
export const Row = styled.div`
  ${space};
  width: 100%;
  max-width: 1180px;
  margin-left: auto;
  margin-right: auto;
  ${({ noMarginRight }) =>
    noMarginRight &&
    `
    margin-right: 0;
  `}
`;

Container.defaultProps = {
  mx: "auto",
  px: "0",
};

export default Container;