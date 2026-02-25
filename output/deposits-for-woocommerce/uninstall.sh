#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'ci_woo_deposits_installed'
wp option delete 'csf_demo_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'dfwc_plugin_review'
wp option delete 'bayna_update_completed'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"

# Delete Transients
wp transient delete 'bayna_review_later'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdx-bayna-plugin-info-%' OR option_name LIKE '_site_transient_cdx-bayna-plugin-info-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_check_ran_%' OR option_name LIKE '_site_transient_wpi_check_ran_%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposits_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposits_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposits_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposits_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposits_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposits_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposits_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposits_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_create_from_shop_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_create_from_shop_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_create_from_shop_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_create_from_shop_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genarate_deposit_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genarate_deposit_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genarate_deposit_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genarate_deposit_orders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'already_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'already_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'already_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'already_cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_force_deposit_checked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_force_deposit_checked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_force_deposit_checked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_force_deposit_checked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_variation_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_variation_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_variation_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_variation_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
