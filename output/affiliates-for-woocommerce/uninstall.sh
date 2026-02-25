#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ddwcaf_affiliate_registration_fields'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete '_ddwcaf_enabled'
wp option delete '_ddwcaf_user_roles'
wp option delete '_ddwcaf_fields_enabled_on_woocommerce_registration'
wp option delete '_ddwcaf_affiliate_dashboard_page_id'
wp option delete '_ddwcaf_enable_widgets_affiliate_dashboard_page'
wp option delete '_ddwcaf_primary_color'
wp option delete '_ddwcaf_default_affiliate_dashboard_page'
wp option delete '_ddwcaf_my_account_enabled'
wp option delete '_ddwcaf_enable_widgets_my_account_endpoint'
wp option delete '_ddwcaf_query_variable_name'
wp option delete '_ddwcaf_referral_cookie_name'
wp option delete '_ddwcaf_referral_cookie_expires'
wp option delete '_ddwcaf_register_visits_enabled'
wp option delete '_ddwcaf_referral_social_share_options'
wp option delete '_ddwcaf_social_share_title'
wp option delete '_ddwcaf_social_share_text'
wp option delete '_ddwcaf_pinterest_image_url'
wp option delete '_ddwcaf_default_commission_rate'
wp option delete '_ddwcaf_exclude_taxes_enabled'
wp option delete '_ddwcaf_exclude_discounts_enabled'
wp option delete '_ddwcaf_withdrawal_methods'
wp option delete '_ddwcaf_affiliate_registration_form_shortcode'
wp option delete '_ddwcaf_affiliate_registration_form_shortcode_content'
wp option delete '_ddwcaf_affiliate_dashboard_shortcode'
wp option delete 'woocommerce_logout_endpoint'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ddwcaf_affiliate_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ddwcaf_affiliate_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ddwcaf_affiliate_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ddwcaf_affiliate_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ddwcaf_affiliate_info_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ddwcaf_affiliate_info_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ddwcaf_affiliate_info_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ddwcaf_affiliate_info_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ddwcaf_affiliate_withdrawal_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ddwcaf_affiliate_withdrawal_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ddwcaf_affiliate_withdrawal_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ddwcaf_affiliate_withdrawal_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ddwcaf_affiliate_default_withdrawal_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ddwcaf_affiliate_default_withdrawal_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ddwcaf_affiliate_default_withdrawal_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ddwcaf_affiliate_default_withdrawal_method'"
