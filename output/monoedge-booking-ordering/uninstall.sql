-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('monoedge_auth', 'monoedge_api_base_url', 'monoedge_user_data', 'monoedge_button_creator_settings', 'monoedge_settings', 'monoedge_stores', 'monoedge_store_progress', 'monoedge_button_styles', 'monoedge_analytics_cache', 'monoedge_qr_codes');

