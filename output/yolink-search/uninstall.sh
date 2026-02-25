#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yolink_config'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yolink_search_results_%' OR option_name LIKE '_site_transient_yolink_search_results_%'"

