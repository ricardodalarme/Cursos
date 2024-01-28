import styled from 'styled-components/native';

export const Container = styled.SafeAreaView`
    background-color: #141a29;
    flex:1;
    padding: 4px 0;
`;

export const SearchContainer = styled.View`
    flex-direction:row;
    width: 100%;
    height: 50;
    align-items: center;
    padding: 0 14px;
    margin-bottom: 8px;
`;

export const SearchButton = styled.TouchableOpacity`
    justify-content: center;
    align-items: center;
    height: 50;
    width: 15%;
`;

export const Input = styled.TextInput`
    background-color: rgba(255,255,255,0.4);
    width: 85%;
    height: 50;
    border-radius: 50px;
    padding: 8px 15px;
    font-size: 18px;
    color: #FFF;
`;

export const Title = styled.Text`
    padding-top: 20px;
    padding-bottom: 8px;
    font-size: 24px;
    color: #fff;
    font-weight: bold;
    padding-left: 14;
    padding-right: 14;
`;

export const BannerButton = styled.TouchableOpacity`

`;

export const Banner = styled.Image`
    height:150px;
    border-radius:6px;
    margin: 0 14px;
`;

export const SliderMovie = styled.FlatList`
    height: 250px;
    padding: 0 14px;
`