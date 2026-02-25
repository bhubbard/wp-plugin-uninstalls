-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prodfaq_position', 'prodfaq_design', 'prodfaq_enabled', 'prodfaq_hide_out_of_stock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_prodfaq_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('_prodfaq_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('_prodfaq_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_prodfaq_items');

