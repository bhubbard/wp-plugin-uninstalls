#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_conv_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_advanced_options_add_param_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_advanced_options_add_param_value'"
wp option delete 'shinystat_analytics_advanced_options_add_param_name'
wp option delete 'shinystat_analytics_advanced_options_add_param_value'

