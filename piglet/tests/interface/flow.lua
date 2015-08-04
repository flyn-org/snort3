plugin =
{
    type = "piglet",
    name = "piglet::flow",
    test = function()
        -- Put the dofile here so that it doesn't get loaded twice
        dofile(SCRIPT_DIR .. "/common.lua")
        return run_all(tests)
    end
}

tests =
{
    initialize = function()
        local flow = Flow.new()
        assert(flow)

        flow = Flow.new(1)
        assert(flow)
    end,

    reset = function()
        local flow = Flow.new()
        flow:reset()
    end
}
