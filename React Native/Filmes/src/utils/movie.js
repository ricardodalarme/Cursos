export function getListMovies(size, movies) {
    let restrictedMovies = [];

    for (let i = 0, l = size; i < l; i++) {
        restrictedMovies.push(movies[i]);
    }
    return restrictedMovies;
}

export function getRandomMovie(movies) {
    const index = Math.floor(Math.random() * movies.length);
    return movies[index];
}