function _azure_subscription
    if type -q az
        echo (command az account show --query 'name' 2> /dev/null) | sed 's/"//g'
    end
end

function _show_azure_subscription
    if [ (_azure_subscription) ]
        echo -ne '(az:'(_azure_subscription)') '
    end
end

function _show_aws_profile
    if set -q AWS_PROFILE
        echo -ne "(aws:$AWS_PROFILE) "
    end
end

function show_tools_version -d ""
    _show_aws_profile
    _show_azure_subscription
end
