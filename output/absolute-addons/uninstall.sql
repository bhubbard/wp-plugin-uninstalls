-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('absolute_addons_version', 'absolute_addons_settings', 'trix_theme_option', 'theme_switched_via_customizer', 'absp_mc_audience_list', 'woocommerce_hide_out_of_stock_items');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_wc_am_migrated';
DELETE FROM wp_options WHERE option_name LIKE '%_data';
DELETE FROM wp_options WHERE option_name LIKE '%_product_id';
DELETE FROM wp_options WHERE option_name LIKE '%_instance';
DELETE FROM wp_options WHERE option_name LIKE '%_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_signature';
DELETE FROM wp_options WHERE option_name LIKE '%_license_auth_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license_auth_salt';
DELETE FROM wp_options WHERE option_name LIKE '%_updated_at';
DELETE FROM wp_options WHERE option_name LIKE '%-options';
DELETE FROM wp_options WHERE option_name LIKE '%_is_updating_license';
DELETE FROM wp_options WHERE option_name LIKE '%_cached_promos';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_absp_like_user_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_absp_like_user_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_absp_like_user_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_absp_like_user_ids');

