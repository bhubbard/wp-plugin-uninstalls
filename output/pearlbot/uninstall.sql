-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pearlbot_logo_id', 'pearlbot_woocommerce_integrated', 'pearlbot_id', 'pearlbot_api_key', 'pearlbot_is_active', 'train_chatbot', 'pearlbot_menu_icon_id', 'pearlbot_admin_notice');

