-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CJAffiliate_plugin_export', 'CJAffiliate_plugin_exportTransfer', 'option_export_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

