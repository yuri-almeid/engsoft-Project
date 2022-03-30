const request = require("supertest");
const app = require('./server');

describe('Teste do servidor', () => {
    
    it('Deve retornar a rota main', async () => {
        const res = await request(app).post('/')
        expect(res.statusCode).toEqual(200);

    })

});