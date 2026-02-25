#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_correios_autofill_addresses_db_version'
wp option delete 'woocommerce_correios-integration_settings'
wp option delete 'woocommerce_correios_version'
wp option delete 'woocommerce_correios_settings'
wp option delete 'woocommerce_email_footer_text'

# Clear Cron Jobs
wp cron event delete 'bluex_clean_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bluex_zone_check_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bluex_zone_check_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bluex_zone_check_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bluex_zone_check_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_correios_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_correios_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_correios_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_correios_tracking_code'"
