#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%\activation-transient' OR option_name LIKE '_site_transient_%\activation-transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_started' OR option_name LIKE '_site_transient_%_started'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_current_page' OR option_name LIKE '_site_transient_%_current_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_generated' OR option_name LIKE '_site_transient_%_generated'"

