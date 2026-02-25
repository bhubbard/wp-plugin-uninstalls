#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tot_options'
wp option delete 'tot_taxes_disabled_due_to_core'
wp option delete 'tot_logs'
wp option delete 'tot_flash_notices'
wp option delete 'tot_ssl_misconfiguration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tot_previous_plugin_version_%'"
wp option delete 'tot_hook_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tot-dismissed-%'"
wp option delete 'tot_version'
wp option delete 'old_tot_keys'
wp option delete 'tot_plugin_updates_log'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'tot-plugin-verification-tab'
wp option delete 'tot-plugin-report-abuse-button'
wp option delete 'tot-profile_tab_verification_roles-select'
wp option delete 'tot-plugin-verification-permission'
wp option delete 'tot-plugin-verification-tab-account'
wp option delete 'tot-plugin-verified-indicator-account'
wp option delete 'um_options'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'pickup_location_pickup_locations'
wp option delete 'tot_orders_to_sync'

# Delete Transients
wp transient delete 'admin_access_token'
wp transient delete 'tot_keys'
wp transient delete 'tot_license_error_state'
wp transient delete 'tot_license_already_handled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tot_error_%' OR option_name LIKE '_site_transient_tot_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_excise%' OR option_name LIKE '_site_transient_excise%'"

# Clear Cron Jobs
wp cron event delete 'tot_get_faq_page'
wp cron event delete 'tot_sync_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tot_email_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tot_email_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tot_email_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tot_email_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tot_confirmation_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tot_confirmation_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tot_confirmation_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tot_confirmation_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tot_approval_status_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tot_approval_status_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tot_approval_status_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tot_approval_status_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tot_approval_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tot_approval_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tot_approval_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tot_approval_status'"
