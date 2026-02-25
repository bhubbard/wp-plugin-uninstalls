#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_update'"
wp option delete 'mcb_option'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_updated_info' OR option_name LIKE '_site_transient_%_updated_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_updated_succes' OR option_name LIKE '_site_transient_%_updated_succes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_updated_warning' OR option_name LIKE '_site_transient_%_updated_warning'"

