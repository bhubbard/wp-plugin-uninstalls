#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_input_secret_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_input_grant_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_productline'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_customer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_select_layout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tokens_valid'"
wp option delete '_iwep_settings_plugin_active'
wp option delete '_iwe_settings_plugin_active'

