#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tf_order_uni_%'"
wp option delete 'tf_dismiss_210'
wp option delete 'tf_settings'
wp option delete 'tf_search_page_id	'
wp option delete 'tf_login_page_id'
wp option delete 'tf_dashboard_page_id'
wp option delete 'tf_register_page_id'
wp option delete 'tf_wishlist_page_id'
wp option delete 'tour_slug'
wp option delete 'hotel_slug'
wp option delete 'apartment_slug'
wp option delete 'car_slug'
wp option delete 'tf_promo__schudle_start_from'
wp option delete 'tf_promo__schudle_option'
wp option delete 'tf_promo_notice_exists'
wp option delete 'tf_promo_widget_exists'
wp option delete 'ins_dashboard_widget_dismissed'
wp option delete 'tf_dismiss_admin_notice'
wp option delete 'tf_hotel_promo_sidebar_notice'
wp option delete 'tf_tour_promo_sidebar_notice'
wp option delete 'tf_apartment_promo_sidebar_notice'
wp option delete 'tf_room_promo_sidebar_notice'
wp option delete 'tf_search_page_id'
wp option delete 'TF_Setup_Wizard'
wp option delete 'tf_search_form_page_id'
wp option delete 'tf_email_verification_page_id'
wp option delete 'tf_qr_code_scanner_page_id'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'tourfic_template_installed'
wp option delete 'tf_permalink_settings_migration'
wp option delete 'tf_template_migrate_data'
wp option delete 'tf_template_3_migrate_data'
wp option delete 'tf_template_2_apartment_migrate_data'
wp option delete 'tf_template_1_car_migrate_data'
wp option delete 'tf_color_data_migrate'
wp option delete 'tf_migrate_data_204_210'
wp option delete 'tf_migrate_data_204_210_2022'
wp option delete 'tourfic_opt'
wp option delete 'tf_license_data_migrate_data_204_210_2022'
wp option delete 'tf_license_settings'
wp option delete 'tf_old_order_data_migrate'
wp option delete 'tf_room_data_migration'
wp option delete 'tf_room_data_add_in_hotel'
wp option delete 'tf_hotel_search_keys_migration'
wp option delete 'tf_room_search_keys_migration'
wp option delete 'tf_tour_search_keys_migration'
wp option delete 'tf_apartment_search_keys_migration'
wp option delete 'tf_enquiry_data_migration'
wp option delete 'tf_tour_availability_migration'
wp option delete 'room_slug'
wp option delete 'tfep_enquiry_update_response'
wp option delete '_tf_integration_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tf_%'"
wp option delete 'tf_dismiss_222'
wp option delete 'tf_admin_caps'
wp option delete 'tf_customer_caps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tf_order_tour_%'"
wp option delete 'tf_old_tour_order_unique_id_data_migrate'
wp option delete 'woocommerce_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tf_template_deactivated_%' OR option_name LIKE '_site_transient_tf_template_deactivated_%'"

# Clear Cron Jobs
wp cron event delete 'tf_promo__schudle'
wp cron event delete 'tf_everydate_cron_job'
wp cron event delete 'tf_enquiry_response_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_apartment_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_apartment_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_apartment_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_apartment_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotels_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_room_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_room_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_room_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_room_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_tours_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_tours_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_tours_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_tours_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_email_templates_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_email_templates_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_email_templates_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_email_templates_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotel_feature[icon-type]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotel_feature[icon-type]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotel_feature[icon-type]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotel_feature[icon-type]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotel_feature[icon-c]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotel_feature[icon-c]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotel_feature[icon-c]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotel_feature[icon-c]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotel_feature[icon-fa]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotel_feature[icon-fa]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotel_feature[icon-fa]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotel_feature[icon-fa]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tour_features[icon-c]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tour_features[icon-c]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tour_features[icon-c]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tour_features[icon-c]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_search_car_rent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_search_car_rent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_search_car_rent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_search_car_rent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_search_driver_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_search_driver_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_search_driver_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_search_driver_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_carrental_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_carrental_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_carrental_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_carrental_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tf_search_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tf_search_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tf_search_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tf_search_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_apartment_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_apartment_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_apartment_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_apartment_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_carrental_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_carrental_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_carrental_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_carrental_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_carrental_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_carrental_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_carrental_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_carrental_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotel_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotel_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotel_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotel_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_room_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_room_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_room_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_room_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_tour_destination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_tour_destination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_tour_destination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_tour_destination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_template_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_template_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_template_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_template_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_taxonomy_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_taxonomy_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_taxonomy_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_taxonomy_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_taxonomy_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_taxonomy_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_taxonomy_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_taxonomy_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_template_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_template_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_template_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_template_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_template_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_template_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_template_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_template_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wishlist_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wishlist_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wishlist_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wishlist_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_apartment_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_apartment_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_apartment_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_apartment_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotel_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotel_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotel_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotel_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_hotel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_hotel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_hotel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_hotel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hotel_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hotel_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hotel_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hotel_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tour_destination_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tour_destination_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tour_destination_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tour_destination_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tour_destination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tour_destination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tour_destination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tour_destination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_tours_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_tours_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_tours_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_tours_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hotel_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hotel_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hotel_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hotel_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tour_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tour_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tour_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tour_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_faqs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_faqs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_faqs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_faqs'"
