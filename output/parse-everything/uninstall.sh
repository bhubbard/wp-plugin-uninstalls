#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'pe_hourly_parse'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parse_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parse_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parse_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parse_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parse_templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parse_templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parse_templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parse_templates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pe_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pe_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pe_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pe_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parse_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parse_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parse_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parse_result'"
