#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpd_LOAD_EXTERNAL_DATA_STEP'
wp option delete 'dpd_LOAD_EXTERNAL_DATA_POSITION'
wp option delete 'dpd_status_order_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_sync_order_status_%'"
wp option delete 'dpd_run_import_manually'
wp option delete 'dpd_first_data_import_completed'
wp option delete 'dpd_self_pickup'
wp option delete 'woocommerce_currency'
wp option delete 'dpd_ogd'
wp option delete 'dpd_chst'
wp option delete 'dpd_commission_npp_payment'
wp option delete 'dpd_payment_type'
wp option delete 'dpd_declared_value'
wp option delete 'dpd_cargo_num_pack'
wp option delete 'dpd_cargo_category'
wp option delete 'dpd_sender_fio'
wp option delete 'dpd_sender_name'
wp option delete 'dpd_sender_phone'
wp option delete 'dpd_sender_email'
wp option delete 'dpd_sender_need_pass'
wp option delete 'dpd_recipient_need_pass'
wp option delete 'dpd_cargo_registered'
wp option delete 'dpd_dvd'
wp option delete 'dpd_trm'
wp option delete 'dpd_prd'
wp option delete 'dpd_vdo'
wp option delete 'dpd_obr'
wp option delete 'dpd_esz'
wp option delete 'dpd_goods_return_amount'
wp option delete 'dpd_delivery_amount'
wp option delete 'dpd_round_to'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'dpd_add_delivery_day'
wp option delete 'dpd_sender'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_sender_%'"
wp option delete 'dpd_required_pickpoint_selection'
wp option delete 'dpd_ignore_profile'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_%'"
wp option delete 'dpd_ignore_tariff'
wp option delete 'dpd_commission_npp_percent'
wp option delete 'dpd_commission_npp_minsum'
wp option delete 'dpd_client_number_RU'
wp option delete 'dpd_auth_key_RU'
wp option delete 'dpd_client_number_test_RU'
wp option delete 'dpd_auth_key_test_RU'
wp option delete 'dpd_currency_RU'
wp option delete 'dpd_client_number_KZ'
wp option delete 'dpd_auth_key_KZ'
wp option delete 'dpd_client_number_test_KZ'
wp option delete 'dpd_auth_key_test_KZ'
wp option delete 'dpd_currency_KZ'
wp option delete 'dpd_client_number_BY'
wp option delete 'dpd_auth_key_BY'
wp option delete 'dpd_client_number_test_BY'
wp option delete 'dpd_auth_key_test_BY'
wp option delete 'dpd_currency_BY'
wp option delete 'dpd_account_default_country'
wp option delete 'dpd_test_mode'
wp option delete 'dpd_weight_default'
wp option delete 'dpd_length_default'
wp option delete 'dpd_width_default'
wp option delete 'dpd_height_default'
wp option delete 'dpd_use_mode'
wp option delete 'dpd_tariff_default'
wp option delete 'dpd_default_tariff_treshold'
wp option delete 'dpd_default_price'
wp option delete 'dpd_currency_KG'
wp option delete 'dpd_currency_AM'
wp option delete 'dpd_commission_npp_check'
wp option delete 'dpd_sender_regular_num'
wp option delete 'dpd_markup_value'
wp option delete 'dpd_markup_type'
wp option delete 'dpd_show_setting_checker'
wp option delete 'dpd_show_faq_notice'
wp option delete 'dpd_calculate_by_parcel'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_client_number_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_auth_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_client_number_test_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_auth_key_test_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpd_currency_%'"
wp option delete 'dpd_pickup_time_period'
wp option delete 'dpd_delivery_time_period'
wp option delete 'dpd_set_tracking_number'
wp option delete 'dpd_mark_payed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_order_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_order_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_order_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_order_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_last_status_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_last_status_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_last_status_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_last_status_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_delivery_variant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_delivery_variant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_delivery_variant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_delivery_variant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_pickup_time_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_pickup_time_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_pickup_time_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_pickup_time_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_delivery_time_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_delivery_time_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_delivery_time_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_delivery_time_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_shipping_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_shipping_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_shipping_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_shipping_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_dimensions_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_dimensions_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_dimensions_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_dimensions_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_dimensions_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_dimensions_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_dimensions_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_dimensions_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_dimensions_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_dimensions_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_dimensions_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_dimensions_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_cargo_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_cargo_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_cargo_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_cargo_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_cargo_num_pack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_cargo_num_pack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_cargo_num_pack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_cargo_num_pack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_content_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_content_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_content_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_content_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_fio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_fio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_fio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_fio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_need_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_need_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_need_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_need_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_streetabbr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_streetabbr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_streetabbr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_streetabbr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_house'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_house'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_house'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_house'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_korpus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_korpus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_korpus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_korpus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_str'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_str'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_str'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_str'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_vlad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_vlad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_vlad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_vlad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_office'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_office'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_office'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_office'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_flat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_flat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_flat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_flat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_terminal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_terminal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_terminal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_terminal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sender_city_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sender_city_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sender_city_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sender_city_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_fio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_fio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_fio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_fio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_need_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_need_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_need_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_need_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_streetabbr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_streetabbr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_streetabbr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_streetabbr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_house'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_house'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_house'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_house'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_korpus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_korpus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_korpus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_korpus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_str'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_str'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_str'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_str'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_vlad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_vlad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_vlad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_vlad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_office'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_office'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_office'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_office'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_flat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_flat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_flat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_flat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_terminal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_terminal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_terminal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_terminal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_city_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_city_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_city_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_city_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_recipient_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_recipient_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_recipient_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_recipient_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_use_cargo_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_use_cargo_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_use_cargo_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_use_cargo_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_cargo_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_cargo_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_cargo_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_cargo_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_npp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_npp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_npp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_npp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_npp_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_npp_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_npp_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_npp_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_unit_loads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_unit_loads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_unit_loads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_unit_loads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_use_marking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_use_marking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_use_marking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_use_marking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cargo_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cargo_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cargo_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cargo_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_dvd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_dvd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_dvd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_dvd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_trm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_trm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_trm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_trm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_prd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_prd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_prd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_prd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_vdo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_vdo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_vdo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_vdo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_obr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_obr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_obr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_obr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_ogd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_ogd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_ogd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_ogd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_esz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_esz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_esz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_esz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_chst'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_chst'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_chst'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_chst'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_goods_return_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_goods_return_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_goods_return_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_goods_return_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_delivery_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_delivery_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_delivery_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_delivery_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_sum_npp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_sum_npp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_sum_npp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_sum_npp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_order_send_error_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_order_send_error_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_order_send_error_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_order_send_error_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'dpd_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'dpd_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'dpd_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'dpd_%'"
