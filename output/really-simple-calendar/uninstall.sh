#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extensions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_style_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_style_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_style_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_style_post'"
