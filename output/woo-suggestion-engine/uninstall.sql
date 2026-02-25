-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('viwse_background_render_processing', 'viwse_background_render_complete', 'viwse_params', 'vi_wse_woo_suggestion_engine_version', 'vi_wse_woocommerce_searched', 'vi_wse_woocommerce_viewed', 'vi_wse_woocommerce_product_atc', 'vi_wse_woo_suggestion_engine_params', 'villatheme_hide_admin_toolbar', 'viwse_background_running', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE 'viwse_background_processed_task_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

