#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apexAgentApiKey'
wp option delete 'ApexIdxDomainUrl'
wp option delete 'ApexIdxBrokerGalUname'
wp option delete 'ApexIdxIsBroker'

