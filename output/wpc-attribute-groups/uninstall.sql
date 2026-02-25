-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcag_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcag_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcag_order', 'wpcag_attributes', 'wpcag_apply', 'wpcag_apply_val', 'wpcag_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcag_order', 'wpcag_attributes', 'wpcag_apply', 'wpcag_apply_val', 'wpcag_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcag_order', 'wpcag_attributes', 'wpcag_apply', 'wpcag_apply_val', 'wpcag_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcag_order', 'wpcag_attributes', 'wpcag_apply', 'wpcag_apply_val', 'wpcag_exclude');

