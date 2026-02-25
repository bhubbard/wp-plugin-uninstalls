-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'health-check-allowed-plugins', 'woocommerce_prices_include_tax', 'woocommerce_custom_orders_table_enabled', 'vtpos_inv_setting', '_vt_ac', 'apps_bd_ups', 'vt_addons', 'vitepos-lite', '_vt_mu_skipped', '_vtp_ps_id', 'vtpos_stock_setting', 'viteposactivate');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';
DELETE FROM wp_options WHERE option_name LIKE '%_addons';
DELETE FROM wp_options WHERE option_name LIKE 'vps_pm_%';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('outlet_id', 'thumbnail_id', '_cogs_total_value', '_vt_prev_purchase_price', '_vt_purchase_price_change', '_vtp_outlet_id', 'force_pw_change', 'billing_city', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', '_vtpos_user_img', 'billing_state', 'added_by', '_vt_stock_cal', '_is_vitepos', '_vt_stock_reverse', '_vtp_payment_list', '_wp_attachment_image_alt', '_product_image_gallery', '_vt_barcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('outlet_id', 'thumbnail_id', '_cogs_total_value', '_vt_prev_purchase_price', '_vt_purchase_price_change', '_vtp_outlet_id', 'force_pw_change', 'billing_city', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', '_vtpos_user_img', 'billing_state', 'added_by', '_vt_stock_cal', '_is_vitepos', '_vt_stock_reverse', '_vtp_payment_list', '_wp_attachment_image_alt', '_product_image_gallery', '_vt_barcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('outlet_id', 'thumbnail_id', '_cogs_total_value', '_vt_prev_purchase_price', '_vt_purchase_price_change', '_vtp_outlet_id', 'force_pw_change', 'billing_city', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', '_vtpos_user_img', 'billing_state', 'added_by', '_vt_stock_cal', '_is_vitepos', '_vt_stock_reverse', '_vtp_payment_list', '_wp_attachment_image_alt', '_product_image_gallery', '_vt_barcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('outlet_id', 'thumbnail_id', '_cogs_total_value', '_vt_prev_purchase_price', '_vt_purchase_price_change', '_vtp_outlet_id', 'force_pw_change', 'billing_city', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', '_vtpos_user_img', 'billing_state', 'added_by', '_vt_stock_cal', '_is_vitepos', '_vt_stock_reverse', '_vtp_payment_list', '_wp_attachment_image_alt', '_product_image_gallery', '_vt_barcode');

