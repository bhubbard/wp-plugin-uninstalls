-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sh9_meta_box_textarea', 'sh9_meta_box_message', 'sh9_meta_box_iplock', 'sh9_meta_box_loggedin');
DELETE FROM wp_usermeta WHERE meta_key IN ('sh9_meta_box_textarea', 'sh9_meta_box_message', 'sh9_meta_box_iplock', 'sh9_meta_box_loggedin');
DELETE FROM wp_termmeta WHERE meta_key IN ('sh9_meta_box_textarea', 'sh9_meta_box_message', 'sh9_meta_box_iplock', 'sh9_meta_box_loggedin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sh9_meta_box_textarea', 'sh9_meta_box_message', 'sh9_meta_box_iplock', 'sh9_meta_box_loggedin');

