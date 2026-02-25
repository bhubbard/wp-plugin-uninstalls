-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mw_wp_form_a8_tracker');
DELETE FROM wp_usermeta WHERE meta_key IN ('mw_wp_form_a8_tracker');
DELETE FROM wp_termmeta WHERE meta_key IN ('mw_wp_form_a8_tracker');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mw_wp_form_a8_tracker');

