#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_settings'"
wp option delete 'campaignpress_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_heartbeat_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_campaigns_last'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_campaigns'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_audiences_last'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_audiences'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_templates_last'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_templates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toast_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_toast_messages'"

