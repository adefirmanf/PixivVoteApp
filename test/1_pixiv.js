const PixivApp = artifacts.require('PixivRanking')

contract("PixivApp Vote", (account)=>{
    let app;
    it("Should create of Illustrator account", ()=>{
        const ID = 1;
        return PixivApp.deployed()
                .then((instance)=>{
                    app = instance
                    return app.Init()
                })
                .then(()=>{
                    return app.illustrator(1)
                })
                .then((result)=>{
                    assert.equal(result[0].c.toString(), '1')
                })
    })
})