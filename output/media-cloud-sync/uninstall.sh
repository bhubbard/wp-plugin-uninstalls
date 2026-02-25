#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_upgrade_version'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_upgrade_queue' OR option_name LIKE '_site_transient_%_upgrade_queue'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_upgrade_total' OR option_name LIKE '_site_transient_%_upgrade_total'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_upgrade_completed' OR option_name LIKE '_site_transient_%_upgrade_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_upgrade_started' OR option_name LIKE '_site_transient_%_upgrade_started'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imagify_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
