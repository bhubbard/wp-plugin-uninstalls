#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'machete_disabled_modules'
wp option delete 'machete_cleanup_settings'
wp option delete 'machete_cookies_settings'
wp option delete 'machete_maintenance_settings'
wp option delete 'machete_powertools_settings'
wp option delete 'machete_social_settings'
wp option delete 'machete_utils_settings'
wp option delete 'machete_woocommerce_settings'
wp option delete 'machete_activation_welcome'

