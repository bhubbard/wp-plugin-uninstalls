#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wildrobot_logistra_show_label_after_send_order'
wp option delete 'wildrobot_logistra_hide_send_buttons'
wp option delete 'wildrobot_logistra_hide_override_buttons'
wp option delete 'wildrobot_logistra_picklist_active'
wp option delete 'wildrobot_logistra_freight_track_url_email'
wp option delete 'wildrobot_logistra_db_version'
wp option delete 'wildrobot_logistra_static_weight_on_orders'
wp option delete 'wildrobot_logistra_setting_complete_order_to_status'
wp option delete 'wildrobot_logistra_setting_send_consignment_on_complete_order'
wp option delete 'wildrobot_logistra_backend_token'
wp option delete 'wildrobot_logistra_backend_url'
wp option delete 'wildrobot_logistra_cargonizer_backend_url_profrakt'
wp option delete 'wildrobot_logistra_cargonizer_backend_url'
wp option delete 'wildrobot_logistra_cargonizer_provider'
wp option delete 'wildrobot_logistra_senders'
wp option delete 'wildrobot_logistra_cargonizer_apikey'
wp option delete 'wildrobot_logistra_sender_id'
wp option delete 'wildrobot_logistra_filter_out_pakkeautomat'
wp option delete 'wildrobot_logistra_fallback_freight_product'
wp option delete 'wildrobot_logistra_calculate_dimensions'
wp option delete 'wildrobot_logistra_calculate_volume'
wp option delete 'wildrobot_logistra_consignment_description_product_names'
wp option delete 'wildrobot_logistra_consignee_message'
wp option delete 'wildrobot_logistra_add_org_name_to_order'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wildrobot_logistra_return_address_name'
wp option delete 'wildrobot_logistra_return_address_address1'
wp option delete 'wildrobot_logistra_return_address_address2'
wp option delete 'wildrobot_logistra_return_address_postcode'
wp option delete 'wildrobot_logistra_return_address_city'
wp option delete 'wildrobot_logistra_return_address_country'
wp option delete 'wildrobot_logistra_return_address_phone'
wp option delete 'wildrobot_logistra_return_address_mobile'
wp option delete 'wildrobot_logistra_return_address_contact_person'
wp option delete 'wildrobot_logistra_return_address_contact_person_email'
wp option delete 'wildrobot_logistra_printer_default'
wp option delete 'wildrobot_logistra_static_weight_amount'
wp option delete 'wildrobot_logistra_print_interval'
wp option delete 'wildrobot_logistra_print_interval_time'
wp option delete 'wildrobot_logistra_selected_transfer_method'
wp option delete 'wildrobot_logistra_selected_transfer_time'
wp option delete 'wildrobot_logistra_setting_complete_order'
wp option delete 'wildrobot_logistra_transport_agreements'
wp option delete 'wildrobot_logistra_use_table_rate_integration'
wp option delete 'wildrobot_logistra_warning_label_tags'
wp option delete 'wildrobot_logistra_migrations'
wp option delete 'logistra-robots-token'
wp option delete 'wildrobot_logistra_backend_url_DEV'
wp option delete 'wildrobot_logistra_cargonizer_backend_url_DEV'
wp option delete 'wildrobot_logistra_cargonizer_backend_url_profrakt_DEV'
wp option delete 'wildrobot_logistra_enviroment'
wp option delete 'wildrobot_logistra_apikey_PROD'
wp option delete 'wildrobot_logistra_apikey'
wp option delete 'wildrobot_logistra_cargonizer_apikey_PROD'
wp option delete 'wildrobot_logistra_backend_token_PROD'
wp option delete 'wildrobot_logistra_sender_id_PROD'
wp option delete 'wildrobot_logistra_printers_PROD'
wp option delete 'wildrobot_logistra_printers'
wp option delete 'wildrobot_logistra_cargonizer_backend_url_PROD'
wp option delete 'wildrobot_logistra_backend_url_PROD'
wp option delete 'wildrobot_logistra_transport_agreements_PROD'
wp option delete 'wildrobot_logistra_cargonizer_backend_url_profrakt_PROD'
wp option delete 'wildrobot_logistra_apikey_DEV'
wp option delete 'wildrobot_logistra_cargonizer_apikey_DEV'
wp option delete 'wildrobot_logistra_backend_token_DEV'
wp option delete 'wildrobot_logistra_sender_id_DEV'
wp option delete 'wildrobot_logistra_printers_DEV'
wp option delete 'wildrobot_logistra_transport_agreements_DEV'
wp option delete 'wildrobot_order_automation_active'
wp option delete 'wildrobot_order_automation_rules'
wp option delete 'wildrobot_logistra_picklist_page'
wp option delete 'wildrobot_logistra_picklist_printer'
wp option delete 'wildrobot_logistra_free_freight_notice'
wp option delete 'wildrobot_logistra_free_freight_almost_value'
wp option delete 'woocommerce_currency'
wp option delete 'wildrobot_logistra_service_partner_select_default_value'
wp option delete 'wildrobot_logistra_pickuppoint_checkout_inline_hook'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'wildrobot_logistra_pickuppoint_checkout_inline'

# Delete Transients
wp transient delete 'wildrobot_logistra_helthjem_customer_consignee_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wildrobot-logistra-freightcost-estimate-%' OR option_name LIKE '_site_transient_wildrobot-logistra-freightcost-estimate-%'"
wp transient delete 'wildrobot_freight_labels_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wildrobot-logistra-sent-recently-%' OR option_name LIKE '_site_transient_wildrobot-logistra-sent-recently-%'"
wp transient delete 'wildrobot_send_order_notices_success'
wp transient delete 'wildrobot_send_order_notices_error'
wp transient delete 'wildrobot_picklist_notices_success'
wp transient delete 'wildrobot_picklist_notices_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wildrobot_check_order_no_consignment_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wildrobot_check_order_no_consignment_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wildrobot_check_order_no_consignment_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wildrobot_check_order_no_consignment_response'"
