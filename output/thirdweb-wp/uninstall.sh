#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_contract_address'
wp option delete 'default_chain'
wp option delete 'engine_api_endpoint'
wp option delete 'engine_access_token'

