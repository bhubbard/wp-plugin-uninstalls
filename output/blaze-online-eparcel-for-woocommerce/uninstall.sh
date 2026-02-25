#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'consignment_per_page'
wp option delete 'linksynceparcel_last_version_check_time'
wp option delete 'linksynceparcel_version'
wp option delete 'linksynceparcel_notsame'
wp option delete 'linksync_is_reached_capping_limit'
wp option delete 'linksync_capping_limit_message'
wp option delete 'linksync_capping_limit_kb'
wp option delete 'linksynceparcel_order_view_error'
wp option delete 'linksynceparcel_order_view_success'
wp option delete 'linksynceparcel_use_order_weight'
wp option delete 'linksynceparcel_use_dimension'
wp option delete 'linksynceparcel_change_order_status'
wp option delete 'linksynceparcel_notify_customers'
wp option delete 'linksynceparcel_laid'
wp option delete 'linksynceparcel_merchant_location_id'
wp option delete 'linksynceparcel_post_charge_to_account'
wp option delete 'linksynceparcel_operation_mode'
wp option delete 'linksynceparcel_merchant_id'
wp option delete 'linksynceparcel_lodgement_facility'
wp option delete 'linksynceparcel_st_apikey'
wp option delete 'linksynceparcel_st_password'
wp option delete 'linksynceparcel_return_address_line1'
wp option delete 'linksynceparcel_return_address_line2'
wp option delete 'linksynceparcel_return_address_line3'
wp option delete 'linksynceparcel_return_address_line4'
wp option delete 'linksynceparcel_return_address_name'
wp option delete 'linksynceparcel_return_address_postcode'
wp option delete 'linksynceparcel_return_address_statecode'
wp option delete 'linksynceparcel_return_address_suburb'
wp option delete 'linksynceparcel_return_business_name'
wp option delete 'linksynceparcel_return_email_address'
wp option delete 'linksynceparcel_return_phone_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_left_offset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_right_offset'"
wp option delete 'linksynceparcel_label_format'
wp option delete 'linksynceparcel_international_checker'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'linksynceparcel_%'"
wp option delete 'linksynceparcel_label_logo'
wp option delete 'linksynceparcel_copy_order_notes'
wp option delete 'linksynceparcel_order_value_declared_value'
wp option delete 'linksynceparcel_maximum_declared_value'
wp option delete 'linksynceparcel_fixed_declared_value'
wp option delete 'linksynceparcel_partial_delivery_allowed'
wp option delete 'linksynceparcel_signature_required'
wp option delete 'linksynceparcel_safe_drop'
wp option delete 'linksynceparcel_insurance'
wp option delete 'order_value_insurance'
wp option delete 'linksynceparcel_default_insurance_value'
wp option delete 'linksynceparcel_declared_value'
wp option delete 'linksynceparcel_declared_value_text'
wp option delete 'linksynceparcel_has_commercial_value'
wp option delete 'linksynceparcel_product_classification'
wp option delete 'linksynceparcel_product_classification_text'
wp option delete 'linksynceparcel_country_origin'
wp option delete 'linksynceparcel_hs_tariff'
wp option delete 'linksynceparcel_default_contents'
wp option delete 'linksynceparcel_default_article_weight'
wp option delete 'linksynceparcel_manifest_sync'
wp option delete 'linksynceparcel_default_article_width'
wp option delete 'linksynceparcel__default_article_width'
wp option delete 'linksynceparcel_from_email_address'
wp option delete 'linksynceparcel_subject'
wp option delete 'linksynceparcel_email_body'
wp option delete 'linksynceparcel_allowance_type'
wp option delete 'linksynceparcel_allowance_value'
wp option delete 'woocommerce_weight_unit'
wp option delete 'linksynceparcel_user_order_details'
wp option delete 'linksynceparcel_default_good_description'
wp option delete 'linksynceparcel_display_choosen_status'
wp option delete 'linksynceparcel_chosen_statuses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_charge_code'"
wp option delete 'linksynceparcel_parcel_post_charge_code'
wp option delete 'linksynceparcel_express_post_charge_code'
wp option delete 'linksynceparcel_int_economy_charge_code'
wp option delete 'linksynceparcel_int_express_courier_charge_code'
wp option delete 'linksynceparcel_int_express_post_charge_code'
wp option delete 'linksynceparcel_int_pack_track_charge_code'
wp option delete 'linksynceparcel_int_registered_charge_code'
wp option delete 'linksynceparcel_chargecodes'
wp option delete 'linksynceparcel_consignment_error'
wp option delete 'linksynceparcel_manifest_view_error'
wp option delete 'linksync_laid'
wp option delete 'linksync_laid_info'
wp option delete 'linksync_previous_laid'
wp option delete 'linksynceparcel_mark_despatch'
wp option delete 'linksynceparcel_post_email_notification'
wp option delete 'linksynceparcel_int_insurance'
wp option delete 'linksynceparcel_order_value_insurance'
wp option delete 'linksynceparcel_int_default_insurance_value'
wp option delete 'linksynceparcel_parcel_post_label'
wp option delete 'linksynceparcel_parcel_post_left_offset'
wp option delete 'linksynceparcel_parcel_post_right_offset'
wp option delete 'linksynceparcel_express_post_label'
wp option delete 'linksynceparcel_express_post_left_offset'
wp option delete 'linksynceparcel_express_post_right_offset'
wp option delete 'linksynceparcel_int_economy_label'
wp option delete 'linksynceparcel_int_economy_left_offset'
wp option delete 'linksynceparcel_int_economy_right_offset'
wp option delete 'linksynceparcel_int_express_courier_label'
wp option delete 'linksynceparcel_int_express_courier_left_offset'
wp option delete 'linksynceparcel_int_express_courier_right_offset'
wp option delete 'linksynceparcel_int_express_post_label'
wp option delete 'linksynceparcel_int_express_post_left_offset'
wp option delete 'linksynceparcel_int_express_post_right_offset'
wp option delete 'linksynceparcel_int_pack_track_label'
wp option delete 'linksynceparcel_int_pack_track_left_offset'
wp option delete 'linksynceparcel_int_pack_track_right_offset'
wp option delete 'linksynceparcel_int_registered_label'
wp option delete 'linksynceparcel_int_registered_left_offset'
wp option delete 'linksynceparcel_int_registered_right_offset'
wp option delete 'linksynceparcel_default_article_height'
wp option delete 'linksynceparcel_default_article_length'
wp option delete 'linksynceparcel_print_return_labels'
wp option delete 'linksynceparcel_consignment_success'
wp option delete 'linksynceparcel_manifest_view_success'

# Clear Cron Jobs
wp cron event delete 'linksynceparceltruncatelog'
wp cron event delete 'linksyncgetlaidinfo'
wp cron event delete 'blz_trigger_5mincron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rawhtml_defaults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rawhtml_defaults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rawhtml_defaults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rawhtml_defaults'"
