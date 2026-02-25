#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcw_add_courses_%' OR option_name LIKE '_site_transient_wpcw_add_courses_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcw_remove_courses_%' OR option_name LIKE '_site_transient_wpcw_remove_courses_%'"

