-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', '_siq_num_indexed_posts', 'siq_api_error_log_enabled', '_siq_admin_notices', '_siq_indexed_posts', 'siq_db_version', '_siq_plugin_version', '_siq_hide_icon_notice', '_siq_hide_review_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_visibility');

