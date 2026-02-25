#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled_stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled_amp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_popads_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nofollow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_website_entry_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_protocol'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_choose'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_value'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_widget_month_filter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_public_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_api_key'"

