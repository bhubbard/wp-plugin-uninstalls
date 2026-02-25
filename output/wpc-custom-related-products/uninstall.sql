-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocr_settings', 'woocr_rules', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woocr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woocr_orderby', 'woocr_order', 'woocr_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('woocr_orderby', 'woocr_order', 'woocr_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('woocr_orderby', 'woocr_order', 'woocr_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woocr_orderby', 'woocr_order', 'woocr_ids');

