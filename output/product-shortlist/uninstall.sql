-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_ps_general_settings', 'ced_ps_smtp_settings', 'ced_ps_email_template_settings', 'ced_ps_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

