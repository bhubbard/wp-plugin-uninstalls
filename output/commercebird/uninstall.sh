#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmbird_exact_online_sync_orders'
wp option delete 'cmbird_enable_eo_stock'
wp option delete 'commercebird-subscription-status'
wp option delete 'cmbird_zoho_crm_domain'
wp option delete 'cmbird_zoho_crm_cid'
wp option delete 'cmbird_zoho_crm_cs'
wp option delete 'cmbird_zoho_crm_url'
wp option delete 'cmbird_authorization_redirect_uri'
wp option delete 'cmbird_zoho_crm_auth_code'
wp option delete 'cmbird_zoho_crm_access_token'
wp option delete 'cmbird_zoho_crm_refresh_token'
wp option delete 'cmbird_zoho_crm_timestamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cmbird_zoho_crm_tax_rate_%'"
wp option delete 'cmbird_zcrm_sync_as_deals'
wp option delete 'zcrm_deals_fields'
wp option delete 'cmbird_zcrm_deal_field_mapping'
wp option delete 'zcrm_deal_stages'
wp option delete 'cmbird_zcrm_order_status_stage_mapping'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_fields_%'"
wp option delete 'cmbird_zoho_inventory_domain'
wp option delete 'cmbird_zoho_inventory_oid'
wp option delete 'cmbird_zoho_inventory_cid'
wp option delete 'cmbird_zoho_inventory_cs'
wp option delete 'cmbird_zoho_inventory_url'
wp option delete 'cmbird_wootozoho_custom_fields'
wp option delete 'cmbird_zoho_pricelist_id'
wp option delete 'cmbird_zoho_pricelist_role'
wp option delete 'cmbird_zoho_pricelist_wcb2b_groups'
wp option delete 'cmbird_zoho_parent_location_id_status'
wp option delete 'zi_cron_interval'
wp option delete 'cmbird_zoho_item_category'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cmbird_zoho_inventory_tax_rate_%'"
wp option delete 'cmbird_zi_tax_groups'
wp option delete 'cmbird_zoho_inventory_auth_code'
wp option delete 'cmbird_zoho_inventory_access_token'
wp option delete 'cmbird_zoho_inventory_refresh_token'
wp option delete 'cmbird_zoho_inventory_timestamp'
wp option delete 'zcrm_contact_layout'
wp option delete 'cmbird_zi_webhook_password'
wp option delete 'commercebird-subscription-id'
wp option delete 'cmbird_zoho_rate_limit_exceeded'
wp option delete 'cmbird_zoho_rate_limit_time'
wp option delete 'cmbird_po_automation_settings'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'cmbird_zoho_enable_accounting_stock_status'
wp option delete 'cmbird_zoho_enable_locationstock_status'
wp option delete 'cmbird_zoho_location_id_status'
wp option delete 'cmbird_zoho_disable_description_sync_status'
wp option delete 'cmbird_zoho_disable_name_sync_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cmbird_group_item_sync_page_cat_id_%'"
wp option delete 'cmbird_zoho_disable_stock_sync_status'
wp option delete 'cmbird_zoho_disable_image_sync_status'
wp option delete 'cmbird_zoho_order_prefix_status'
wp option delete 'woocommerce_wh_address'
wp option delete 'woocommerce_wh_address_2'
wp option delete 'woocommerce_wh_city'
wp option delete 'woocommerce_wh_state'
wp option delete 'woocommerce_wh_country'
wp option delete 'woocommerce_wh_postcode'
wp option delete 'cmbird_location_data'
wp option delete 'zcrm_products_fields'
wp option delete 'cmbird_zoho_crm_owner_id'
wp option delete 'zcrm_products_custom_fields'
wp option delete 'zcrm_sales_orders_fields'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'zcrm_sales_order_layout'
wp option delete 'zcrm_sales_orders_custom_fields'
wp option delete 'zcrm_deals_layout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cmbird_zoho_api_calls_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cmbird_zoho_id_for_term_id_%'"
wp option delete 'cmbird_zoho_inventory_cron'
wp option delete 'cmbird_zoho_disable_price_sync_status'
wp option delete 'cmbird_zoho_enable_order_status_status'
wp option delete 'cmbird_zoho_enable_auto_number_status'
wp option delete 'woocommerce_allow_backorders'
wp option delete 'cmbird_zoho_disable_product_sync_status'
wp option delete 'cmbird_zoho_crm_disable_product_sync_status'

# Delete Transients
wp transient delete 'cmbird_eo_synced_skus'
wp transient delete 'subscription_details'
wp transient delete 'commercebird_security_log'
wp transient delete 'wc_b2b_groups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cmbird_thankyou_callback_executed_%' OR option_name LIKE '_site_transient_cmbird_thankyou_callback_executed_%'"
wp transient delete 'zoho_pricelist'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zoho_pricelist_%' OR option_name LIKE '_site_transient_zoho_pricelist_%'"
wp transient delete 'zoho_products'
wp transient delete 'wcb2b_synced_groups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpdi-%' OR option_name LIKE '_site_transient_wpdi-%'"

# Clear Cron Jobs
wp cron event delete 'cmbird_exact_online_sync_orders'
wp cron event delete 'cmbird_eo_get_payment_statuses'
wp cron event delete 'zcrm_refresh_token'
wp cron event delete 'zoho_contact_sync'
wp cron event delete 'cmbird_purchase_order_auto'
wp cron event delete 'cmbird_process_webhook_queue'
wp cron event delete 'zi_execute_import_sync'
wp cron event delete 'cmbird_zoho_sync_category_cron'
wp cron event delete 'cmbird_zoho_contact_sync'
wp cron event delete 'cmbird_common'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eo_last_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eo_last_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eo_last_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eo_last_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eo_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eo_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eo_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eo_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cost_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eo_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eo_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eo_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eo_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eo_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eo_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eo_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eo_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcrm_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcrm_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcrm_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcrm_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcrm_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcrm_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcrm_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcrm_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcrm_parent_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcrm_parent_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcrm_parent_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcrm_parent_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcrm_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcrm_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcrm_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcrm_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pb_bundled_items_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pb_bundled_items_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pb_bundled_items_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pb_bundled_items_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pb_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pb_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pb_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pb_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pb_base_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pb_base_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pb_base_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pb_base_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_sw_max_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_sw_max_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_sw_max_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_sw_max_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_role_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_role_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_role_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_role_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcb2b_group_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcb2b_group_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcb2b_group_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcb2b_group_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pricebook_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pricebook_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pricebook_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pricebook_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pricebook_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pricebook_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pricebook_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pricebook_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcb2b_product_group_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcb2b_product_group_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcb2b_product_group_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcb2b_product_group_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcb2b_product_group_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcb2b_product_group_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcb2b_product_group_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcb2b_product_group_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcb2b_product_group_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcb2b_product_group_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcb2b_product_group_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcb2b_product_group_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_currency_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_currency_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_currency_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_currency_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_currency_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_currency_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_currency_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_currency_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_billing_address_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_billing_address_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_billing_address_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_billing_address_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_primary_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_primary_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_primary_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_primary_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_shipping_address_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_shipping_address_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_shipping_address_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_shipping_address_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_created_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_created_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_created_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_created_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_last_modified_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_last_modified_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_last_modified_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_last_modified_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'zi_contactperson_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'zi_contactperson_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'zi_contactperson_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'zi_contactperson_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gst_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gst_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gst_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gst_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gst_treatment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gst_treatment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gst_treatment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gst_treatment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_product_body_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_product_body_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_product_body_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_product_body_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_product_errmsg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_product_errmsg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_product_errmsg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_product_errmsg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_purchase_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_purchase_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_purchase_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_purchase_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_account_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_account_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_account_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_account_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_inventory_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_inventory_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_inventory_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_inventory_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pb_layout_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pb_layout_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pb_layout_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pb_layout_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pb_add_to_cart_form_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pb_add_to_cart_form_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pb_add_to_cart_form_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pb_add_to_cart_form_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcb2b_unpaid_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcb2b_unpaid_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcb2b_unpaid_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcb2b_unpaid_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acfw_store_credit_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acfw_store_credit_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acfw_store_credit_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acfw_store_credit_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eo_gl_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eo_gl_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eo_gl_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eo_gl_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eo_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eo_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eo_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eo_contact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcrm_product_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcrm_product_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcrm_product_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcrm_product_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcrm_product_sync_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcrm_product_sync_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcrm_product_sync_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcrm_product_sync_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_contact_persons_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_contact_persons_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_contact_persons_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_contact_persons_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_contactperson_id_0'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_contactperson_id_0'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_contactperson_id_0'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_contactperson_id_0'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zi_contactperson_id_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zi_contactperson_id_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zi_contactperson_id_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zi_contactperson_id_1'"
