-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcu_enable_plugin', 'wcu_product_category', 'wcu_plugin_setting_user_password', 'wcu_plugin_setting_user_login', 'wcu_uc_public_key', 'wcu_plugin_user_id');

