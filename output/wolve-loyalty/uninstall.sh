#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wolve_info_title_color'
wp option delete 'wolve_info_tier_bg'
wp option delete 'wolve_info_tier_text'
wp option delete 'wolve_info_table_bg'
wp option delete 'wolve_info_table_text'
wp option delete 'wolve_info_checkmark'
wp option delete 'wolve_info_cta_bg'
wp option delete 'wolve_info_cta_text'
wp option delete 'wolve_info_accent_color'
wp option delete 'wolve_loyalty_info_cta_title'
wp option delete 'wolve_loyalty_registration_url'
wp option delete 'wolve_loyalty_info_button_text'
wp option delete 'wolve_loyalty_is_connected'
wp option delete 'wolve_loyalty_signup_defaults'
wp option delete 'wolve_loyalty_welcome_message'
wp option delete 'wolve_loyalty_login_prompt'
wp option delete 'wolve_loyalty_login_url'
wp option delete 'wolve_loyalty_greeting_format'
wp option delete 'wolve_loyalty_enable_myaccount_endpoint'
wp option delete 'wolve_bg_dark'
wp option delete 'wolve_text_main'
wp option delete 'wolve_accent_mint'
wp option delete 'wolve_accent_gold'
wp option delete 'wolve_loyalty_benefits_heading'
wp option delete 'wolve_loyalty_no_rewards_text'
wp option delete 'wolve_loyalty_no_available_rewards_text'
wp option delete 'wolve_loyalty_compensate_tax'
wp option delete 'wolve_loyalty_points_enabled'
wp option delete 'wolve_loyalty_points_text'
wp option delete 'wolve_loyalty_points_style'
wp option delete 'wolve_loyalty_points_bg_color'
wp option delete 'wolve_loyalty_points_text_color'
wp option delete 'wolve_loyalty_points_border_color'
wp option delete 'wolve_loyalty_tier_progress_enabled'
wp option delete 'wolve_loyalty_tier_progress_color'
wp option delete 'wolve_loyalty_tier_progress_bg_color'
wp option delete 'wolve_loyalty_tier_progress_style'
wp option delete 'wolve_loyalty_tier_points_label'
wp option delete 'wolve_loyalty_tier_points_format'
wp option delete 'wolve_loyalty_tier_next_label'
wp option delete 'wolve_loyalty_tier_points_remaining'
wp option delete 'wolve_loyalty_vipps_login_url'
wp option delete 'wolve_loyalty_api_key'
wp option delete 'wolve_loyalty_company_id'
wp option delete 'wolve_loyalty_require_phone_field'
wp option delete 'wolve_loyalty_register_all_as_members'
wp option delete 'wolve_input_bg'
wp option delete 'wolve_consent_text'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wolve_loyalty_store_id'
wp option delete 'wolve_loyalty_coupons_title'
wp option delete 'wolve_loyalty_coupon_accent_color'
wp option delete 'wolve_loyalty_optout_label'
wp option delete 'wolve_loyalty_checkout_prompt'
wp option delete 'wolve_loyalty_tile_bg_color'
wp option delete 'wolve_loyalty_tile_selected_bg_color'
wp option delete 'wolve_loyalty_tile_accent_color'
wp option delete 'wolve_loyalty_tile_text_color'
wp option delete 'wolve_loyalty_tile_text_secondary_color'
wp option delete 'wolve_loyalty_tile_border_color'
wp option delete 'wolve_loyalty_stamp_filled_color'
wp option delete 'wolve_loyalty_stamp_empty_color'
wp option delete 'wolve_loyalty_stamp_empty_border_color'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vipps_login_%' OR option_name LIKE '_site_transient_vipps_login_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wolve_password_%' OR option_name LIKE '_site_transient_wolve_password_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wolve_login_%' OR option_name LIKE '_site_transient_wolve_login_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pending_vipps_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pending_vipps_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pending_vipps_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pending_vipps_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wolve_loyalty_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wolve_loyalty_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wolve_loyalty_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wolve_loyalty_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wolve_loyalty_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wolve_loyalty_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wolve_loyalty_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wolve_loyalty_member'"
