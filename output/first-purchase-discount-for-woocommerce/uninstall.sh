#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woofirstpurchase_current_tab_setting'
wp option delete 'woofirstpurchase_popup_template_setting'
wp option delete 'woofirstpurchase_popup_background_setting'
wp option delete 'woofirstpurchase_first_line_text_setting'
wp option delete 'woofirstpurchase_discount_amount_text_setting'
wp option delete 'woofirstpurchase_last_line_text_setting'
wp option delete 'woofirstpurchase_submit_button_text_setting'
wp option delete 'woofirstpurchase_chosen_coupon_setting'
wp option delete 'woofirstpurchase_generatedcoupontype_setting'
wp option delete 'woofirstpurchase_generatedcouponamount_setting'
wp option delete 'woofirstpurchase_generatedcouponexpiry_setting'
wp option delete 'woofirstpurchase_existing_coupon_setting'
wp option delete 'woofirstpurchase_email_template_setting'
wp option delete 'woofirstpurchase_emailsubject_setting'
wp option delete 'woofirstpurchase_customname_setting'
wp option delete 'woofirstpurchase_customemail_setting'
wp option delete 'woofirstpurchase_logo_setting'
wp option delete 'woofirstpurchase_email_top_line_text_setting'
wp option delete 'woofirstpurchase_email_main_heading_text_setting'
wp option delete 'woofirstpurchase_email_middle_line_text_setting'
wp option delete 'woofirstpurchase_email_bottom_line_text_setting'
wp option delete 'woofirstpurchase_email_button_text_setting'
wp option delete 'woofirstpurchase_enable_mailchimp_setting'
wp option delete 'woofirstpurchase_mailchimp_api_key_setting'
wp option delete 'woofirstpurchase_mailchimpchosenlist_setting'
wp option delete 'woofirstpurchase_mailchimp_optin_status_setting'
wp option delete 'woofirstpurchase_display_onpageload_setting'
wp option delete 'woofirstpurchase_time_spent_onpage_setting'
wp option delete 'woofirstpurchase_time_spent_seconds_setting'
wp option delete 'woofirstpurchase_enable_custom_triggers_setting'
wp option delete 'woofirstpurchase_limitclaimsemail_setting'
wp option delete 'woofirstpurchase_limitclaimscookie_setting'
wp option delete 'woofirstpurchase_limitclaimsip_setting'
wp option delete 'woofirstpurchase_disregard_previous_orders_setting'
wp option delete 'woofirstpurchase_keepdata_setting'
wp option delete 'woofirstpurchase_minimumamount_setting'
wp option delete 'woofirstpurchase_maximumamount_setting'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apply_before_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
