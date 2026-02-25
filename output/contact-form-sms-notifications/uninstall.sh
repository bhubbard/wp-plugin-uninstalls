#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_urls'"
wp option delete 'wpcf7is_history'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_international_sms_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_welcome_screen_activation_redirect' OR option_name LIKE '_site_transient_%_welcome_screen_activation_redirect'"

