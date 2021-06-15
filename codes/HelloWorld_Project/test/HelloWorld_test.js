HelloWorld = artifacts.require("HelloWorld");

contract("HelloWorld", function() {
    it("HelloWorld contract was deployed successfully", async function() {
        const helloworld = await HelloWorld.deployed();
        assert(helloworld, "contract was not deployed");
    });
});
