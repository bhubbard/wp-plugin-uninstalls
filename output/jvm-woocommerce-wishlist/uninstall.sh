#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_steps_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_dependency_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_dependency_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_get_onboarding_recommended_plugins_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_get_onboarding_recommended_plugins_checked_status'"
wp option delete 'cixwishlist_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'woocommerce_shop_page_id'
wp option delete 'jvm_woocommerce_wishlist_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'cixww_onboarding_onboarding_steps_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_onboarding_redirect' OR option_name LIKE '_site_transient_%_onboarding_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cix_wc_wishlist_%' OR option_name LIKE '_site_transient_cix_wc_wishlist_%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cix_default_wc_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cix_default_wc_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cix_default_wc_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cix_default_wc_wishlist'"
