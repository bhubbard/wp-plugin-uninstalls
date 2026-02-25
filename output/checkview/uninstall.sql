-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('checkview_log_options', 'captcha_ip_range_opt', 'i13_recapcha_ip_to_skip_captcha', 'checkview_hide_me', 'checkview_advance_options', 'checkview_api_options', 'cleantalk_data', 'disable_actions', 'disable_email_receipt', 'woocommerce_checkview_settings', 'disable_webhooks', 'checkview_woo_product_id', 'checkview_test_user', 'checkview_admin_menu_title', 'checkview_forms_test_transient', 'checkview_store_orders_transient', 'checkview_store_products_transient', 'checkview_store_shipping_transient', 'checkview_forms_list_transient', 'checkview_saas_pk', 'checkview_saas_ip_address', 'checkview_whitelisted_ips_spamfirewall', 'checkview_whitelisted_ips_antispam', 'checkview_activation_notification');
DELETE FROM wp_options WHERE option_name LIKE 'CF_TEST_%';
DELETE FROM wp_options WHERE option_name LIKE '%_wsf_entry_id';
DELETE FROM wp_options WHERE option_name LIKE '%_wsf_frm_id';
DELETE FROM wp_options WHERE option_name LIKE 'checkview_whitelisted_ips_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpforms_form_locations', '_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpforms_form_locations', '_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpforms_form_locations', '_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpforms_form_locations', '_hash');

