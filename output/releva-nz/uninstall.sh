#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relevatracking_api_key'
wp option delete 'relevatracking_client_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp option delete 'relevatracking_additional_html'
wp option delete 'active_sitewide_plugins'

