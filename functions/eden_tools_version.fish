function _node_version
    echo (command node --version 2> /dev/null)
end

function _show_node_version -d "Show node version in prompt"
    if [ (_node_version) ]
        set -l node_version '(node:'(_node_version)') '
        echo -ne "$node_version"
    end
end

function _go_version
    echo (command go version 2> /dev/null)
end

function _show_go_version -d "Show node version in prompt"
    if [ (_go_version) ]
        set -l go_version '('(_go_version)') '
        echo -ne "$go_version"
    end
end

function show_tools_version -d ""
    _show_node_version
    # _show_go_version
end
