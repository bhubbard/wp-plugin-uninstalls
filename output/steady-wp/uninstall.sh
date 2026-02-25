#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'steady-wp_settings_connect_is_connected'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connect_publication_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connect_campaign_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connect_widget_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connect_api_key'"

