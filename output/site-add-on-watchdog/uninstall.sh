#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_settings_error' OR option_name LIKE '_site_transient_%_settings_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_wpscan_error' OR option_name LIKE '_site_transient_%_wpscan_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_webhook_error' OR option_name LIKE '_site_transient_%_webhook_error'"

