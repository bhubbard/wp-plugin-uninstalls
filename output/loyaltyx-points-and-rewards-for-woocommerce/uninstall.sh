#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddfw_newsletter_subscribed'
wp option delete 'ddfw_newsletter_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_purchase_code'"
wp option delete '_ddwcpr_enabled'
wp option delete '_ddwcpr_award_order_status'
wp option delete '_ddwcpr_revoke_order_status'
wp option delete '_ddwcpr_show_messages_to_guest_users'
wp option delete '_ddwcpr_points_singlular_label'
wp option delete '_ddwcpr_points_plural_label'
wp option delete '_ddwcpr_points_message_styling'
wp option delete '_ddwcpr_points_message'
wp option delete '_ddwcpr_points_earning_per_amount'
wp option delete '_ddwcpr_points_earning_value'
wp option delete '_ddwcpr_points_redeeming_amount'
wp option delete '_ddwcpr_points_redeeming_value'
wp option delete '_ddwcpr_details_icons_enabled'
wp option delete '_ddwcpr_details_icons_wrapper_enabled'
wp option delete '_ddwcpr_rule_icons_wrapper_enabled'
wp option delete '_ddwcpr_details_icon_size'
wp option delete '_ddwcpr_details_icon_total_earned_points'
wp option delete '_ddwcpr_details_icon_available_points'
wp option delete '_ddwcpr_details_icon_redeemed_points'
wp option delete '_ddwcpr_details_icon_coupon_reward'
wp option delete '_ddwcpr_details_icon_referrals'
wp option delete '_ddwcpr_details_icon_color'
wp option delete '_ddwcpr_details_icon_wrapper_background_color'
wp option delete '_ddwcpr_details_card_background_color'
wp option delete '_ddwcpr_details_card_border_color'
wp option delete '_ddwcpr_details_card_text_color'
wp option delete '_ddwcpr_details_card_value_color'
wp option delete '_ddwcpr_layout_level_progress_bar_background_color'
wp option delete '_ddwcpr_layout_level_progress_bar_color'
wp option delete '_ddwcpr_layout_table_header_text_color'
wp option delete '_ddwcpr_layout_table_header_background_color'
wp option delete '_ddwcpr_layout_rule_icons_wrapper_background_color'
wp option delete '_ddwcpr_points_reason'
wp option delete '_ddwcpr_email_settings'
wp option delete '_ddwcpr_points_dashboard_shortcode'
wp option delete '_ddwcpr_available_points_value_shortcode'
wp option delete '_ddwcpr_my_account_endpoint'
wp option delete '_ddwcpr_my_account_endpoint_title'
wp option delete '_ddwcpr_points_earning_excluded_products'
wp option delete '_ddwcpr_points_earning_excluded_categories'
wp option delete '_ddwcpr_points_redeeming_excluded_products'
wp option delete '_ddwcpr_points_redeeming_excluded_categories'
wp option delete '_ddwcpr_my_account_enabled'
wp option delete '_ddwcpr_enable_widgets_my_account_endpoint'
wp option delete '_ddwcpr_points_earning_include_taxes_enabled'
wp option delete '_ddwcpr_points_earning_include_shipping_enabled'
wp option delete '_ddwcpr_points_earning_exclude_coupon_enabled'
wp option delete '_ddwcpr_points_earning_rounding'
wp option delete '_ddwcpr_points_earning_exclude_sale_products_enabled'
wp option delete '_ddwcpr_points_redeeming_min_points'
wp option delete '_ddwcpr_points_redeeming_max_points'
wp option delete '_ddwcpr_points_redeeming_exclude_sale_products_enabled'
wp option delete '_ddwcpr_points_expiration_enabled'
wp option delete '_ddwcpr_points_expiration_time'
wp option delete '_ddwcpr_points_expiration_email_enabled'
wp option delete '_ddwcpr_points_expiration_email_time'
wp option delete '_ddwcpr_details_icon_expired_points'
wp option delete 'woocommerce_logout_endpoint'
wp option delete '_ddwcpr_installed_at'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%website_plugins' OR option_name LIKE '_site_transient_%website_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%featured_plugins' OR option_name LIKE '_site_transient_%featured_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%statistics' OR option_name LIKE '_site_transient_%statistics'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddwcpr_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddwcpr_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddwcpr_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddwcpr_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddwcpr_coupon_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddwcpr_coupon_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddwcpr_coupon_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddwcpr_coupon_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ddwcpr_birthday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ddwcpr_birthday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ddwcpr_birthday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ddwcpr_birthday'"
