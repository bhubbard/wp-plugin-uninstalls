#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bkf_options_setting'
wp option delete 'bkf_features_setting'
wp option delete 'bkf_ddi_setting'
wp option delete 'bkf_dd_setting'
wp option delete 'bkf_ddf_setting'
wp option delete 'bkf_dd_ds_fees'
wp option delete 'bkf_sd_setting'
wp option delete 'bkf_wf_setting'
wp option delete 'bkf_dm_setting'
wp option delete 'bkf_advanced_setting'
wp option delete 'bkf_localisation_setting'
wp option delete 'bkf_pdf_setting'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'active_sitewide_plugins'
wp option delete 'acf_first_activated_version'
wp option delete 'acf_version'
wp option delete 'acf_escaped_html_notice_dismissed'
wp option delete 'cptui_post_types'
wp option delete 'cptui_taxonomies'
wp option delete 'acf_escaped_html_log'
wp option delete 'acf_will_escape_html_log'
wp option delete 'bkf_petals_setting'
wp option delete 'bkf_petals_product_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nonfloral'"
wp option delete 'bkf_nonfloral_exclude_shipping'
wp option delete 'bkf_localisation_version'
wp option delete 'bkf_audio_setting'
wp option delete 'bkf_notifier_version'
wp option delete 'bkf_options_version'
wp option delete 'bkf_suburbs_db_version'
wp option delete 'bkf_suburbs_settings_version'
wp option delete 'bkf_ds_slug'
wp option delete 'bkf_dd_field_label'
wp option delete 'bkf_dd_db_version'
wp option delete 'bkf_dd_cb_db_version'
wp option delete 'bkf_dd_sd_ms_db_version'
wp option delete 'bkf_dd_ts_db_version'
wp option delete 'bkf_dd_closed'
wp option delete 'bkf_dd_full'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'bkf_pdf_version'
wp option delete 'woocommerce_pos_store_name'
wp option delete 'woocommerce_pos_store_address'
wp option delete 'woocommerce_pos_store_phone'
wp option delete 'woocommerce_pos_store_email'

# Delete Transients
wp transient delete 'acf_deactivated_notice_id'
wp transient delete 'update_plugins'
wp transient delete 'acf_plugin_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acf_network_upgrade_needed_%' OR option_name LIKE '_site_transient_acf_network_upgrade_needed_%'"

# Clear Cron Jobs
wp cron event delete 'acf_update_site_health_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_changed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bkf_sub_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bkf_sub_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bkf_sub_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bkf_sub_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bkf_notifier_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bkf_notifier_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bkf_notifier_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bkf_notifier_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_petals_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_petals_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_petals_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_petals_on'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deldate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deldate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deldate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deldate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'town'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'town'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'town'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'town'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tvalue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tvalue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tvalue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tvalue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upsellAmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upsellAmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upsellAmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upsellAmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crtyname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crtyname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crtyname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crtyname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'makeup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'makeup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'makeup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'makeup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upsell'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upsell'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upsell'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upsell'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upsellamt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upsellamt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upsellamt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upsellamt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deltime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deltime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deltime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deltime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'addresstype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'addresstype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'addresstype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'addresstype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postalcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postalcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postalcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postalcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crtycode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crtycode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crtycode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crtycode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'occasion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'occasion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'occasion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'occasion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_phone'"
