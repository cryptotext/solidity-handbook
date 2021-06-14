HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", function() {
    it("", async function() {
        const helloworld = await HelloWorld.deployed();
        assert(helloworld);
    });
});
