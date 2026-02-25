#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prdd_lite_db_version'
wp option delete 'prdd_lite_installed'
wp option delete 'prdd_lite_language'
wp option delete 'prdd_lite_date_format'
wp option delete 'prdd_lite_months'
wp option delete 'prdd_lite_calendar_day'
wp option delete 'prdd_lite_theme'
wp option delete 'prdd_lite_global_holidays'
wp option delete 'prdd_lite_enable_rounding'
wp option delete 'prdd_is_data_migrated'
wp option delete 'woocommerce_prdd_global_settings'
wp option delete 'woocommerce_version '
wp option delete 'woocommerce_version'
wp option delete 'delivery_item-cart-charges'
wp option delete 'delivery_item-meta-charges'
wp option delete 'prdd_lite_enable_delete_order_item'
wp option delete 'wcap_restrict_domain_address'
wp option delete 'ts_reset_tracking'
wp option delete 'prdd_lite_time_format'
wp option delete 'prdd_add_to_calendar'
wp option delete 'prdd_add_to_email'
wp option delete 'prdd_global_selection'
wp option delete 'prdd_availability_display'
wp option delete 'prdd_disable_price_calculation_on_dates'
wp option delete 'prdd_enable_delivery_edit'
wp option delete 'prdd_enable_delivery_reschedule'
wp option delete 'prdd_delivery_reschedule_days'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activate_time'"
wp option delete 'prdd_pro_installed'
wp option delete 'prddd_lite_upgrade_to_pro_notice_dismissed'
wp option delete 'prddd_lite_upgrade_to_pro_notice_expired_dismissed'
wp option delete 'prddd_edd_license_download_type'
wp option delete 'prddd_deactivated_due_to_trial_expiry'
wp option delete 'edd_sample_license_status_prdd_woo'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_welcome_page_shown_time'"
wp option delete 'prdd_lite_allow_tracking'
wp option delete 'prdd_lite_pro_welcome_page_shown'
wp option delete 'prdd_lite_pro_welcome_page_shown_time'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_prdd_lite_enable_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_prdd_lite_enable_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_prdd_lite_enable_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_prdd_lite_enable_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_prdd_lite_minimum_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_prdd_lite_minimum_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_prdd_lite_minimum_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_prdd_lite_minimum_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_prdd_lite_maximum_number_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_prdd_lite_maximum_number_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_prdd_lite_maximum_number_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_prdd_lite_maximum_number_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_prdd_lite_delivery_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_prdd_lite_delivery_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_prdd_lite_delivery_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_prdd_lite_delivery_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_prdd_lite_delivery_field_mandatory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_prdd_lite_delivery_field_mandatory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_prdd_lite_delivery_field_mandatory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_prdd_lite_delivery_field_mandatory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_prdd_lite_holidays'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_prdd_lite_holidays'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_prdd_lite_holidays'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_prdd_lite_holidays'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_prdd_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_prdd_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_prdd_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_prdd_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_special_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_special_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_special_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_special_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icl_lang_duplicate_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
