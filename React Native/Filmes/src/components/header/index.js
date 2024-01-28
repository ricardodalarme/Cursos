import React from 'react';
import { MenuButton, Title, Container } from './styles';
import { Feather } from '@expo/vector-icons';
import { useNavigation } from '@react-navigation/native';

function Header({ title }) {
    const navigation = useNavigation();

    return (
        <Container>
            <MenuButton
                onPress={() => navigation.openDrawer()}
            >
                <Feather
                    name="menu"
                    size={36}
                    color="#FFF"
                />
            </MenuButton>
            < Title>{title}</Title>
        </Container>
    );
}

export default Header;
