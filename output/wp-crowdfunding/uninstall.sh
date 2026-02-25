#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vendor_type'
wp option delete 'wpcf_addons_config'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'wpcf_dashboard_paginate_number'
wp option delete 'wpcf_redurl'
wp option delete 'wpcf_show_description'
wp option delete 'wpneo_crowdfunding_is_used'
wp option delete 'wpneo_user_role_selector'
wp option delete 'wpneo_form_page_id'
wp option delete 'wpcf_user_reg_success_redirect_uri'
wp option delete 'number_of_words_show_in_listing_description'
wp option delete 'number_of_collumn_in_row'
wp option delete 'wpcf_show_short_description'
wp option delete 'wpcf_show_category'
wp option delete 'seperate_crowdfunding_categories'
wp option delete 'wpcf_show_tag'
wp option delete 'wpcf_show_feature'
wp option delete 'wpcf_show_video'
wp option delete 'wpcf_show_end_method'
wp option delete 'wpneo_show_target_goal'
wp option delete 'wpneo_show_target_date'
wp option delete 'wpneo_show_target_goal_and_date'
wp option delete 'wpneo_show_campaign_never_end'
wp option delete 'wpcf_show_start_date'
wp option delete 'wpcf_show_end_date'
wp option delete 'wpneo_show_min_price'
wp option delete 'wpneo_show_max_price'
wp option delete 'wpcf_show_funding_goal'
wp option delete 'wpneo_show_recommended_price'
wp option delete 'wpcf_show_predefined_amount'
wp option delete 'wpcf_show_contributor_table'
wp option delete 'wpcf_show_contributor_anonymity'
wp option delete 'wpcf_show_country'
wp option delete 'wpcf_show_location'
wp option delete 'wpcf_show_reward_image'
wp option delete 'wpcf_show_reward'
wp option delete 'wpcf_show_estimated_delivery_month'
wp option delete 'wpcf_show_estimated_delivery_year'
wp option delete 'wpcf_show_quantity'
wp option delete 'wpcf_show_terms_and_conditions'
wp option delete 'wpneo_requirement_title'
wp option delete 'wpneo_requirement_text'
wp option delete 'wpneo_requirement_agree_title'
wp option delete 'wpneo_crowdfunding_dashboard_page_id'
wp option delete 'wpcf_admin_footer_text_rated'
wp option delete 'wpneo_campaign_edit_status'
wp option delete 'wpneo_default_campaign_status'
wp option delete 'wpneo_cf_selected_theme'
wp option delete 'wpneo_single_page_template'
wp option delete 'wpneo_listing_page_id'
wp option delete 'wpneo_registration_page_id'
wp option delete 'wpneo_single_page_id'
wp option delete 'hide_cf_campaign_from_shop_page'
wp option delete 'wpneo_donation_btn_text'
wp option delete 'wpneo_crowdfunding_add_to_cart_redirect'
wp option delete 'wpneo_enable_paypal_per_campaign_email'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'wpcf_enable_tax'
wp option delete 'woocommerce_wpneo_stripe_connect_settings'
wp option delete 'wpneo_enable_color_styling'
wp option delete 'wpneo_color_scheme'
wp option delete 'wpneo_button_bg_color'
wp option delete 'wpneo_button_bg_hover_color'
wp option delete 'wpneo_button_text_color'
wp option delete 'wpneo_button_text_hover_color'
wp option delete 'wpneo_custom_css'
wp option delete 'wpcf_listing_post_number'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_header_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_funding_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_campaign_end_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loved_campaign_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_duration_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nf_duration_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nf_duration_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nf_duration_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nf_duration_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_campaign_updates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_campaign_updates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_campaign_updates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_campaign_updates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_funding_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_funding_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_funding_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_funding_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_funding_minimum_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_funding_minimum_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_funding_minimum_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_funding_minimum_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_funding_maximum_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_funding_maximum_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_funding_maximum_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_funding_maximum_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_funding_recommended_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_funding_recommended_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_funding_recommended_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_funding_recommended_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcf_predefined_pledge_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_show_contributor_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_show_contributor_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_show_contributor_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_show_contributor_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_mark_contributors_as_anonymous'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_mark_contributors_as_anonymous'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_mark_contributors_as_anonymous'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_mark_contributors_as_anonymous'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_campaigner_paypal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_campaigner_paypal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_campaigner_paypal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_campaigner_paypal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_reward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_reward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_reward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_reward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_about'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_about'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_about'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_about'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_portfolio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_portfolio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_portfolio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_portfolio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_mobile1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_mobile1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_mobile1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_mobile1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_email1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_email1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_email1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_email1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_fax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_fax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_fax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_fax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_vk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_vk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_vk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_vk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_selected_reward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_selected_reward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_selected_reward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_selected_reward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_crowdfunding_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_crowdfunding_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_crowdfunding_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_crowdfunding_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpneo_wallet_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpneo_wallet_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpneo_wallet_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpneo_wallet_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_marked_as_crowdfunding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_marked_as_crowdfunding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_marked_as_crowdfunding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_marked_as_crowdfunding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
