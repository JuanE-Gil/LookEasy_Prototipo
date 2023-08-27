const API = 'https://api.themoviedb.org/3';
const Languages_es = '?language=es-MX';
export function get(path) {
    return fetch(API + path + Languages_es, {
        headers: {
            Authorization:
                'Bearer ',
            'Content-Type': 'application/json;charset=utf-8',
        },
    }).then((result) => result.json());
}
