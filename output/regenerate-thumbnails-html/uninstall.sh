#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'meowapps_hide_ads'
wp option delete 'meowapps_hide_meowapps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_validated' OR option_name LIKE '_site_transient_%_validated'"

