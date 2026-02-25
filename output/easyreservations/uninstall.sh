#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reservations_form'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reservations_form_%'"
wp option delete 'reservations_tax_display_cart'
wp option delete 'reservations_tax_total_display'
wp option delete 'reservations_tax_round_at_subtotal'
wp option delete 'reservations_tax_display_shop'
wp option delete 'reservations_availability_filters'
wp option delete 'reservations_meta_box_errors'
wp option delete 'reservations_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'reservations_admin_notice_%'"
wp option delete 'reservations_permalinks'
wp option delete 'reservations_queue_flush_rewrite_rules'
wp option delete 'reservations_sell_in_person'
wp option delete 'reservations_allow_tracking'
wp option delete 'reservations_store_address'
wp option delete 'reservations_store_address_2'
wp option delete 'reservations_store_city'
wp option delete 'reservations_store_postcode'
wp option delete 'reservations_default_location'
wp option delete 'reservations_currency'
wp option delete 'reservations_weight_unit'
wp option delete 'reservations_dimension_unit'
wp option delete 'reservations_currency_pos'
wp option delete 'reservations_price_decimal_sep'
wp option delete 'reservations_price_num_decimals'
wp option delete 'reservations_price_thousand_sep'
wp option delete 'reservations_db_version'
wp option delete 'reservations_prices_include_tax'
wp option delete 'reservations_allow_bulk_remove_personal_data'
wp option delete 'reservations_enable_order_comments'
wp option delete 'reservations_custom_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_2'"
wp option delete 'reservations_tax_rates'
wp option delete 'active_sitewide_plugins'
wp option delete 'reservations_force_ssl_checkout'
wp option delete 'reservations_schema_missing_tables'
wp option delete 'reservations_registration_generate_username'
wp option delete 'reservations_registration_generate_password'
wp option delete 'reservations_checkout_address_field'
wp option delete 'reservations_checkout_address_2_field'
wp option delete 'reservations_checkout_company_field'
wp option delete 'reservations_checkout_phone_field'
wp option delete 'reservations_email_from_name'
wp option delete 'reservations_email_from_address'
wp option delete 'reservations_stock_email_recipient'
wp option delete 'reservations_cart_redirect_after_add'
wp option delete 'reservations_checkout_highlight_required_fields'
wp option delete 'reservations_enable_guest_checkout'
wp option delete 'reservations_unforce_ssl_checkout'
wp option delete 'reservations_checkout_page_id'
wp option delete 'reservations_myaccount_page_id'
wp option delete 'reservations_schema_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'reservations_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'reservations_wait_for_payment_minutes'
wp option delete 'reservations_wait_for_ordering_minutes'
wp option delete 'reservations_form_checkout'
wp option delete 'default_resource_cat'
wp option delete 'reservations_gateway_order'
wp option delete 'reservations_erasure_request_removes_order_data'
wp option delete 'reservations_trash_pending_orders'
wp option delete 'reservations_trash_failed_orders'
wp option delete 'reservations_trash_cancelled_orders'
wp option delete 'reservations_anonymize_completed_orders'
wp option delete 'reservations_delete_inactive_accounts'
wp option delete 'reservations_checkout_pay_endpoint'
wp option delete 'reservations_checkout_order_received_endpoint'
wp option delete 'reservations_myaccount_orders_endpoint'
wp option delete 'reservations_myaccount_view_order_endpoint'
wp option delete 'reservations_myaccount_edit_account_endpoint'
wp option delete 'reservations_myaccount_edit_address_endpoint'
wp option delete 'reservations_myaccount_payment_methods_endpoint'
wp option delete 'reservations_myaccount_lost_password_endpoint'
wp option delete 'reservations_logout_endpoint'
wp option delete 'reservations_myaccount_add_payment_method_endpoint'
wp option delete 'reservations_myaccount_delete_payment_method_endpoint'
wp option delete 'reservations_myaccount_set_default_payment_method_endpoint'
wp option delete 'reservations_reservation_name'
wp option delete 'reservations_reservation_item_label'
wp option delete 'reservations_block_before'
wp option delete 'reservations_block_after'
wp option delete 'reservations_merge_resources'
wp option delete 'reservations_price_display_suffix'
wp option delete 'reservations_tracker_last_send'
wp option delete 'reservations_use_time'
wp option delete 'reservations_enable_taxes'
wp option delete 'reservations_enable_coupons'
wp option delete 'reservations_enable_signup_and_login_from_checkout'
wp option delete 'reservations_enable_myaccount_registration'
wp option delete 'reservations_tracker_ua'
wp option delete 'reservations_date_format'
wp option delete 'reservations_time_format'
wp option delete 'reservations_strict_time'
wp option delete 'reservations_earliest_arrival'
wp option delete 'reservations_price_decimals'
wp option delete 'reservations_single_image_width'
wp option delete 'reservations_thumbnail_image_width'
wp option delete 'reservations_thumbnail_cropping'
wp option delete 'reservations_thumbnail_cropping_custom_width'
wp option delete 'reservations_thumbnail_cropping_custom_height'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'reservations_placeholder_image'
wp option delete 'reservations_catalog_columns'
wp option delete 'reservations_catalog_rows'
wp option delete 'reservations_resource_page_display_price'
wp option delete 'reservations_default_catalog_orderby'
wp option delete 'reservations_checkout_terms_and_conditions_checkbox_text'
wp option delete 'reservations_checkout_privacy_policy_text'
wp option delete 'reservations_registration_privacy_policy_text'
wp option delete 'reservations_obw_last_completed_step'
wp option delete 'reservations_main_options'
wp option delete 'reservations_style'
wp option delete 'reservations_settings'
wp option delete 'reservations_interval'
wp option delete 'reservations_main_permission'
wp option delete 'reservations_email_to_user'
wp option delete 'reservations_email_to_user_msg'
wp option delete 'reservations_email_to_user_subj'
wp option delete 'reservations_email_to_userapp'
wp option delete 'reservations_email_to_userapp_msg'
wp option delete 'reservations_email_to_userapp_subj'
wp option delete 'reservations_email_to_userdel'
wp option delete 'reservations_email_to_userdel_msg'
wp option delete 'reservations_email_to_userdel_subj'
wp option delete 'reservations_email_to_admin'
wp option delete 'reservations_email_to_admin_msg'
wp option delete 'reservations_email_to_admin_subj'
wp option delete 'reservations_email_to_user_edited'
wp option delete 'reservations_email_to_user_edited_msg'
wp option delete 'reservations_email_to_user_edited_subj'
wp option delete 'reservations_email_to_admin_edited'
wp option delete 'reservations_email_to_admin_edited_msg'
wp option delete 'reservations_email_to_admin_edited_subj'
wp option delete 'reservations_email_to_user_admin_edited'
wp option delete 'reservations_email_to_user_admin_edited_msg'
wp option delete 'reservations_email_to_user_admin_edited_subj'
wp option delete 'reservations_email_sendmail'
wp option delete 'reservations_email_sendmail_msg'
wp option delete 'reservations_email_sendmail_subj'
wp option delete 'reservations_room_category'
wp option delete 'reservations_special_offer_cat'
wp option delete 'reservations_uninstall'
wp option delete 'reservations_edit_text'
wp option delete 'reservations_edit_options'
wp option delete 'reservations_search_bar'
wp option delete 'reservations_form_old-search-bar'
wp option delete 'reservations_form_default-widget'
wp option delete 'last_processed_reservation'
wp option delete 'reservations_regular_guests'
wp option delete 'easyreservations_successful_script'
wp option delete 'reservations_support_mail'
wp option delete 'reservations_price_per_persons'
wp option delete 'reservations_active_modules'
wp option delete 'reservations_email_to_admin_paypal'
wp option delete 'reservations_email_to_user_paypal'
wp option delete 'reservations_enable_checkout_login_reminder'
wp option delete 'reservations_email_footer_text'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_needs_processing' OR option_name LIKE '_site_transient_%_needs_processing'"
wp transient delete 'er_setup_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'er_count_comments'
wp transient delete 'easyreservations_test_remote_post'
wp transient delete 'easyreservations_test_remote_get'
wp transient delete 'easyreservations_system_status_wp_version_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_installing' OR option_name LIKE '_site_transient_%_installing'"
wp transient delete '_er_activation_redirect'
wp transient delete 'er_term_counts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'er_tracks_blog_details'

# Clear Cron Jobs
wp cron event delete 'easyreservations_tracker_send_event'
wp cron event delete 'delete_version_transients'
wp cron event delete 'easyreservations_scheduled_sales'
wp cron event delete 'easyreservations_cancel_unpaid_orders'
wp cron event delete 'easyreservations_cleanup_sessions'
wp cron event delete 'easyreservations_cleanup_personal_data'
wp cron event delete 'easyreservations_cleanup_logs'
wp cron event delete 'easyreservations_delete_temporary_reservations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_php_min_requirements_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_php_min_requirements_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_php_min_requirements_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_php_min_requirements_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timeline_hourly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timeline_hourly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timeline_hourly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timeline_hourly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timeline_snapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timeline_snapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timeline_snapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timeline_snapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-resource-roomnames'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-resource-roomnames'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-resource-roomnames'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-resource-roomnames'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-resource-slots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-resource-slots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-resource-slots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-resource-slots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_res_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_res_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_res_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_res_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roomcount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roomcount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roomcount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roomcount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reservations_groundprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reservations_groundprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reservations_groundprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reservations_groundprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-resource-interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-resource-interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-resource-interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-resource-interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-resource-req'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-resource-req'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-resource-req'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-resource-req'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'er_resource_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'er_resource_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'er_resource_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'er_resource_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-resource-billing-method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-resource-billing-method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-resource-billing-method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-resource-billing-method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-resource-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-resource-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-resource-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-resource-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reservations_child_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reservations_child_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reservations_child_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reservations_child_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyreservations_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyreservations_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyreservations_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyreservations_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_easyreservations_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_easyreservations_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_easyreservations_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easyreservations_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_resource_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_resource_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_resource_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_resource_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'purchase_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discount_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discount_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discount_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discount_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'er_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'er_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'er_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'er_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_order_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_address_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_address_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_address_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_address_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refunded_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refunded_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refunded_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refunded_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refunded_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reservation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reservation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reservation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reservation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_compound'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_compound'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_compound'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_compound'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rate_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rate_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rate_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rate_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reservation_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reservation_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reservation_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reservation_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reservation_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reservation_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reservation_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reservation_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'resource_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'resource_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'resource_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'resource_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'er_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'er_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'er_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'er_last_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyreservations_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyreservations_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyreservations_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyreservations_tracks_anon_id'"
