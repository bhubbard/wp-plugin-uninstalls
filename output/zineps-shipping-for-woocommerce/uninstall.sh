#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zineps_api_mode'
wp option delete 'zineps_working_api'
wp option delete 'zineps_client_id'
wp option delete 'zineps_client_secret'
wp option delete 'zineps_shop_name'
wp option delete 'zineps_default_carrier'
wp option delete 'zineps_default_method'
wp option delete 'zineps_default_complete_order'

