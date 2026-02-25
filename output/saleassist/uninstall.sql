-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_Saleassist', 'saleassist_api_key', 'saleassist_secret_key', 'saleassist_client_id', 'saleassist_alert_code', 'saleassist_alert_msg', 'saleassist_page_enable', 'saleassist_post_enable', 'saleassist_data', 'widget_saleassist_widget', 'saleassist_db_version');

