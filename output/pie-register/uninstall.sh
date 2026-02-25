#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_manager_example'
wp option delete 'am_deactivate_example_checkbox'
wp option delete 'piereg_api_manager_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licence_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licence_email'"
wp option delete 'piereg_form_free_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_instance'"
wp option delete 'piereg_api_manager_product_id'
wp option delete 'piereg_api_manager_instance'
wp option delete 'pie_app_firebase_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'piereg_form_fields_%'"
wp option delete 'pie_fields_default'
wp option delete 'pie_user_email_types'
wp option delete 'pie_email_template_updated_blocked_unverified_users'
wp option delete 'pie_countries'
wp option delete 'pie_countries_v3811'
wp option delete 'pie_register_2'
wp option delete 'pie_pages'
wp option delete 'Profile_page_id'
wp option delete 'pie_us_states'
wp option delete 'pie_can_states'
wp option delete 'pie_install_date'
wp option delete 'pie_fields'
wp option delete 'pie_register_custom'
wp option delete 'pie_fields_meta'
wp option delete 'piereg_plugin_db_version'
wp option delete 'piereg_form_fields_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'piereg_form_field_option_%'"
wp option delete 'piereg_api_manager_addon_AuthNet_status'
wp option delete 'piereg_api_manager_addon_Bbpress_status'
wp option delete 'piereg_api_manager_addon_BulkEmail_status'
wp option delete 'piereg_api_manager_addon_Field_Visibility_status'
wp option delete 'piereg_api_manager_addon_geolocation_status'
wp option delete 'piereg_api_manager_addon_Mail_Chimp_status'
wp option delete 'piereg_api_manager_addon_Profile_Search_status'
wp option delete 'piereg_api_manager_addon_Social_Sites_Login_status'
wp option delete 'piereg_api_manager_addon_Stripe_status'
wp option delete 'piereg_api_manager_addon_Twilio_status'
wp option delete 'piereg_api_manager_addon_WooCommerce_status'
wp option delete 'piereg_payment_log_option'
wp option delete 'pie_admin_footer_text_rated'
wp option delete 'piereg_api_manager_addon_WooCommerce_activated'
wp option delete 'piereg_api_manager_addon_Bbpress_activated'
wp option delete 'piereg_api_manager_addon_Field_Visibility_activated'
wp option delete 'pie_register_twilio'
wp option delete 'piereg_api_manager_addon_Twilio_activated'
wp option delete 'pieregister_activation_redirect'
wp option delete 'pie_user_invitation_access_invitation_codes'
wp option delete 'pie_register'
wp option delete 'piereg_activated_time'
wp option delete 'pie_review_request_delete'
wp option delete 'pie_license_expire_msg'
wp option delete 'pie_promo_security_notice'
wp option delete 'pie_promo_notice_for_wc_user'
wp option delete 'pie_promo_notice_for_mc_user_2'
wp option delete 'pie_promo_notice_for_bb_user_3'
wp option delete 'pie_promo_notice_for_wpb_user'
wp option delete 'pie_free_notice_to_premium_users'
wp option delete 'piereg_form_pricing_fields'
wp option delete 'piereg_api_manager_addon_BulkEmail_activated'
wp option delete 'deleted_users'

# Delete Transients
wp transient delete 'random_seed'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'pieregister_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'register_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'register_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'register_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'register_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_key_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_key_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_key_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_key_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registered_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registered_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registered_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registered_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invite_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invite_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invite_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invite_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pie_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pie_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pie_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pie_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'pie_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'pie_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'pie_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'pie_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_user_payment_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_user_payment_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_user_payment_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_user_payment_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'new_email_address_hashed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'new_email_address_hashed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'new_email_address_hashed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'new_email_address_hashed'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_two_way_login_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_two_way_login_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_two_way_login_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_two_way_login_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_user_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_user_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_user_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_user_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_user_subscribtion_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_user_subscribtion_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_user_subscribtion_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_user_subscribtion_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_user_subscribtion_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_user_subscribtion_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_user_subscribtion_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_user_subscribtion_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piereg_post_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piereg_post_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piereg_post_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piereg_post_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pr_renew_account_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pr_renew_account_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pr_renew_account_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pr_renew_account_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_pricing_key_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_pricing_key_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_pricing_key_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_pricing_key_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_starting_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_starting_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_starting_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_starting_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pie_checkbox_add_to_mailchimp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pie_checkbox_add_to_mailchimp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pie_checkbox_add_to_mailchimp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pie_checkbox_add_to_mailchimp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_social'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_social'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_social'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_social'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social_site_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social_site_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social_site_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social_site_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_pricing_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_pricing_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_pricing_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_pricing_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_pricing_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_pricing_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_pricing_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_pricing_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piereg_pricing_activation_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piereg_pricing_activation_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piereg_pricing_activation_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piereg_pricing_activation_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pie_paypal_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pie_paypal_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pie_paypal_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pie_paypal_txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pie_paypal_payer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pie_paypal_payer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pie_paypal_payer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pie_paypal_payer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
