#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mtspay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mtspay_action_message' OR option_name LIKE '_site_transient_%mtspay_action_message'"

