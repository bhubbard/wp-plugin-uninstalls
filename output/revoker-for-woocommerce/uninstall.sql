-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_address', 'woocommerce_store_phone', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'revoker_withdrawal_period', 'revoker_button_text', 'revoker_confirm_button_text', 'revoker_cancel_button_text', 'revoker_button_style', 'revoker_button_position', 'revoker_show_in_emails', 'revoker_send_confirmation', 'revoker_admin_notification', 'revoker_return_company', 'revoker_return_address', 'revoker_return_address_2', 'revoker_return_postcode', 'revoker_return_city', 'revoker_excluded_categories', 'revoker_excluded_products', 'revoker_exclude_downloaded', 'revoker_db_version', 'woocommerce_email_from_name', 'revoker_withdrawal_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('revoker_pro_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('revoker_pro_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('revoker_pro_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('revoker_pro_notice_dismissed');

