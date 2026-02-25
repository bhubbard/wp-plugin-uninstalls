#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blocks_%'"
wp option delete 'blocks'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'blocks_dropdown_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_logged_in' OR option_name LIKE '_site_transient_%_logged_in'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_logged_out' OR option_name LIKE '_site_transient_%_logged_out'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
