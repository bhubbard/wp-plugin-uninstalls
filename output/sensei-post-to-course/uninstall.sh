#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sptc_settings'
wp option delete 'woothemes-sensei-version'
wp option delete 'sensei-version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

