#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_loya_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_loya_oauth_state_%' OR option_name LIKE '_site_transient_loya_oauth_state_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_loya_session_%' OR option_name LIKE '_site_transient_loya_session_%'"

