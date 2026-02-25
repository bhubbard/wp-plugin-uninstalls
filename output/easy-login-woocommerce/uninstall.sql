-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xoo-el-settings-init', 'xoo-el-version', 'xoo_tracking_consent_easy-login-woocommerce', 'xoo-el-gl-options', 'xoo-el-sy-options', 'xoo-el-av-options');
DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%';
DELETE FROM wp_options WHERE option_name LIKE 'xoo_plugin_deactivated_%';
DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_old_layout';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%-general-options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'shipping_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'shipping_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'shipping_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'shipping_first_name', 'billing_last_name', 'shipping_last_name');

