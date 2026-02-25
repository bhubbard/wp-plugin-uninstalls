-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grfwp-settings', 'GRFWP_Trial_Happening', 'grfwp-installation-time', 'grfwp-permission-level', 'grfwp-review-ask-time', 'fsp-helper-notice-dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('grfwp', 'fdm_menu_item_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('grfwp', 'fdm_menu_item_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('grfwp', 'fdm_menu_item_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('grfwp', 'fdm_menu_item_id');

