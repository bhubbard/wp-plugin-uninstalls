#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oir_cleanup_progress_page'
wp option delete 'oir_removed_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

