#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'softwearwc_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%settings_error' OR option_name LIKE '_site_transient_%settings_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%settings_retail_error' OR option_name LIKE '_site_transient_%settings_retail_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%settings_latest_collection_error' OR option_name LIKE '_site_transient_%settings_latest_collection_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%check_connection' OR option_name LIKE '_site_transient_%check_connection'"
wp transient delete 'softwearwc_settings_error'

