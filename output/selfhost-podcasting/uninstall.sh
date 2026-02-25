#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_recent_dispatch' OR option_name LIKE '_site_transient_%_recent_dispatch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_dispatch_count' OR option_name LIKE '_site_transient_%_dispatch_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_consecutive_errors' OR option_name LIKE '_site_transient_%_consecutive_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

