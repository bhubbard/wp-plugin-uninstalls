#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'static_snap_last_processed_file'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cli_process_lock' OR option_name LIKE '_site_transient_%_cli_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
