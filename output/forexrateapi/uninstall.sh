#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forexrateapi_api_key'
wp option delete 'forexrateapi_data_success'
wp option delete 'forexrateapi_data_none'
wp option delete 'forexrateapi_data_error'

