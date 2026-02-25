#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%menu_backups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%import_export_logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nav_menu_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max_backups'"
wp option delete 'cm_mbr_max_backups'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%messages' OR option_name LIKE '_site_transient_%messages'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%original_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%original_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%original_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%original_name'"
