-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cateco_settings', 'cc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cateco_order', '_cc_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cateco_order', '_cc_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cateco_order', '_cc_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cateco_order', '_cc_order');

