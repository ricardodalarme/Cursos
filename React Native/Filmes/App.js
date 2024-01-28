import 'react-native-gesture-handler';
import React from 'react';
import {StatusBar} from 'react-native'
import { NavigationContainer } from '@react-navigation/native';
import Routes from './src/routes';

function App() {
  return (
    <NavigationContainer>
      <StatusBar hidden={true}/>
      <Routes/>
    </NavigationContainer>
  );
}

export default App;
