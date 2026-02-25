-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_bacs_order_status';
DELETE FROM wp_options WHERE option_name LIKE '%_cheque_order_status';
DELETE FROM wp_options WHERE option_name LIKE '%_cod_downloadable_order_status';
DELETE FROM wp_options WHERE option_name LIKE '%_cod_order_status';
DELETE FROM wp_options WHERE option_name LIKE '%_mode';
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

