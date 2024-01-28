import styled from 'styled-components/native';

export const Container = styled.TouchableOpacity`
    padding-top: 16px;
    padding-bottom: 16px;
    padding-right: 16px;
    width:140;
    height :180px;
`;

export const BannerItem = styled.Image`
    padding: 14px;
    height: 170px;
    width: 100%;
    border-radius: 8px;
`;

export const Title = styled.Text`
    color: #FFF;
    padding-top: 8px;
   font-size: 14px;
`;

export const RateContainer = styled.View`
    flex-direction:row;
    align-items: center;
`;

export const Rate = styled.Text`
    color: #FFF;
    padding-left: 4px;
    font-size: 12px;
`;
