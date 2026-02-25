#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'xoo_ml_otp_users'
wp option delete 'xoo_ml_last_cleanup'
wp option delete 'xoo_tracking_consent_mobile-login-woocommerce'
wp option delete 'xoo-ml-services-options'
wp option delete 'xoo-ml-phone-options'
wp option delete 'xoo-ml-sdk-dependant'
wp option delete 'xoo-ml-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data'"
wp option delete 'xoo_ml_el_refresh_fields'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_xoo_tracking_consent_last_sent_%' OR option_name LIKE '_site_transient_xoo_tracking_consent_last_sent_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xoo_ml_phone_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xoo_ml_phone_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xoo_ml_phone_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xoo_ml_phone_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xoo_ml_phone_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xoo_ml_phone_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xoo_ml_phone_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xoo_ml_phone_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xoo_ml_phone_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xoo_ml_phone_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xoo_ml_phone_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xoo_ml_phone_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
