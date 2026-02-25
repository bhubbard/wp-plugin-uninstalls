#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_valid'"
wp option delete 'good_old_twitter_widget'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_status' OR option_name LIKE '_site_transient_%_status'"

