#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'super_buttons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_classes'"
wp option delete '_sb_db'
wp option delete '_sb_meta_db'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_text' OR option_name LIKE '_site_transient_%_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta' OR option_name LIKE '_site_transient_%_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_classes' OR option_name LIKE '_site_transient_%_classes'"

