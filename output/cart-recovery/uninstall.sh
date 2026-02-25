#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crfw_licence_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crfw_licence_status_%'"
wp option delete 'crfw_db_version'
wp option delete 'crfw_settings_email'
wp option delete 'crfw_cart_completion_working'
wp option delete 'crfw_cart_salt'
wp option delete 'crfw_cron_last_run'
wp option delete 'crfw_anon_meta_clearup_processed_until'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'checkout_url'
wp option delete 'crfw_cart_value_tracking_started'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crfw_settings_%'"
wp option delete 'crfw_settings_main'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'crfw_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_user_email'"
