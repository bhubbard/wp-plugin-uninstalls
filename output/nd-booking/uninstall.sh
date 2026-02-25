#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nd_booking_alert_msg_enable'
wp option delete 'nicdark_theme_author'
wp option delete 'nd_booking_coupon_enable'
wp option delete 'nd_booking_customizer_color_dark_1'
wp option delete 'nd_booking_customizer_color_dark_2'
wp option delete 'nd_booking_customizer_color_1'
wp option delete 'nd_booking_customizer_color_2'
wp option delete 'nd_booking_customizer_color_3'
wp option delete 'nd_options_customizer_font_family_h'
wp option delete 'nd_options_customizer_font_family_p'
wp option delete 'nd_options_customizer_font_color_h'
wp option delete 'nd_options_customizer_font_color_p'
wp option delete 'nd_options_customizer_forms_submit_bg'
wp option delete 'nd_booking_customizer_plugin_style'
wp option delete 'nd_booking_elementor_enable'
wp option delete 'nd_booking_integration_enable'
wp option delete 'nd_booking_message_enable'
wp option delete 'nd_booking_email_template'
wp option delete 'nicdark_customizer_logo_img'
wp option delete 'nd_booking_stripe_enable'
wp option delete 'nd_booking_stripe_checkout'
wp option delete 'nd_booking_stripe_public_key'
wp option delete 'nd_booking_stripe_secret_key'
wp option delete 'nd_booking_stripe_currency'
wp option delete 'nd_booking_visualcomposer_enable'
wp option delete 'nd_booking_integration_wpml'
wp option delete 'nd_booking_price_range_enable'
wp option delete 'nd_booking_branch_select_enable'
wp option delete 'nd_booking_info_price_enable'
wp option delete 'nd_booking_services_filter_enable'
wp option delete 'nd_booking_extra_services_filter_enable'
wp option delete 'nd_booking_packages_enable'
wp option delete 'nd_booking_similar_rooms_enable'
wp option delete 'nd_booking_paypal_enable'
wp option delete 'nd_booking_booking_request_enable'
wp option delete 'nd_booking_payment_on_arrive_enable'
wp option delete 'nd_booking_textarea'
wp option delete 'nd_booking_currency'
wp option delete 'nd_booking_units_of_measure'
wp option delete 'nd_booking_container'
wp option delete 'nd_booking_plugin_dev_mode'
wp option delete 'nd_booking_price_guests'
wp option delete 'nd_booking_price_range_min_value'
wp option delete 'nd_booking_info_price_value'
wp option delete 'nd_booking_price_range_default_value'
wp option delete 'nd_booking_price_range_max_value'
wp option delete 'nd_booking_search_page'
wp option delete 'nd_booking_booking_page'
wp option delete 'nd_booking_checkout_page'
wp option delete 'nd_booking_terms_page'
wp option delete 'nd_booking_account_page'
wp option delete 'nd_booking_order_page'
wp option delete 'nd_booking_slug'
wp option delete 'nd_booking_slug_singular'
wp option delete 'nd_booking_city_tax'
wp option delete 'nd_booking_vat'
wp option delete 'nd_booking_paypal_developer'
wp option delete 'nd_booking_paypal_email'
wp option delete 'nd_booking_paypal_token'
wp option delete 'nd_booking_paypal_currency'
wp option delete 'nd_booking_paypal_message_checkout'
wp option delete 'nd_booking_booking_request_message_checkout'
wp option delete 'nd_booking_bank_transfer_message_checkout'
wp option delete 'nd_booking_payment_on_arrive_message_checkout'
wp option delete 'nd_options_page_enable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_alert_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_alert_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_alert_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_alert_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_alert_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_alert_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_alert_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_alert_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_alert_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_alert_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_alert_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_alert_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_alert_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_alert_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_alert_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_alert_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_alert_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_alert_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_alert_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_alert_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_5_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_max_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_max_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_max_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_max_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_room_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_room_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_room_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_room_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_min_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_min_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_min_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_min_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_room_custom_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_room_custom_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_room_custom_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_room_custom_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_room_integration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_room_integration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_room_integration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_room_integration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_room_woo_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_room_woo_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_room_woo_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_room_woo_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_stars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_text_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_text_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_text_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_text_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_branches'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_branches'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_branches'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_branches'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_normal_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_normal_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_normal_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_normal_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_post_id_room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_post_id_room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_post_id_room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_post_id_room'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_id_room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_id_room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_id_room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_id_room'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price_type_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_mon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_mon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_mon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_mon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_tue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_tue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_tue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_tue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_wed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_wed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_wed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_wed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_thu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_thu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_thu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_thu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_fri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_fri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_fri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_fri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_sat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_sat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_sat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_sat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_week_price_sun'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_week_price_sun'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_week_price_sun'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_week_price_sun'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_exceptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_exceptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_exceptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_exceptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_exceptions_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_exceptions_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_exceptions_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_exceptions_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_3_date_range_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_exceptions_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_exceptions_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_exceptions_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_exceptions_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_qnt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_qnt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_qnt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_qnt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_min_booking_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_min_booking_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_min_booking_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_min_booking_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_additional_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_additional_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_additional_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_additional_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_image_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_image_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_image_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_image_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_featured_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_featured_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_featured_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_featured_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_featured_image_replace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_featured_image_replace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_featured_image_replace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_featured_image_replace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_title_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_title_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_title_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_title_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_packages_image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_packages_image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_packages_image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_packages_image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_similar_rooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_similar_rooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_similar_rooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_similar_rooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_text_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_text_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_text_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_text_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_mandatory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_mandatory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_mandatory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_2_mandatory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_cpt_4_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_image_cpt_4_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_meta_box_page_layout_cpt_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_meta_box_page_layout_cpt_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_meta_box_page_layout_cpt_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_meta_box_page_layout_cpt_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_form_booking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_form_booking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_form_booking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_form_booking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_form_booking_guests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_form_booking_guests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_form_booking_guests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_form_booking_guests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_form_booking_date_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_form_booking_date_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_form_booking_date_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_form_booking_date_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_booking_form_booking_date_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_booking_form_booking_date_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_booking_form_booking_date_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_booking_form_booking_date_to'"
