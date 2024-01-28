import axios from 'axios';

// movie/now_playing?api_key=da42e08e1a201104fe40ec5de8ab0c49&language=pt-BR&page=1

const api = axios.create({
    baseURL: 'https://api.themoviedb.org/3',
})

export const key = 'da42e08e1a201104fe40ec5de8ab0c49';

export default api;