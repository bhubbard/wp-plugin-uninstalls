-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('try_on_head', 'try_on_ear', 'try_on_neck', 'selected_try_option');
DELETE FROM wp_usermeta WHERE meta_key IN ('try_on_head', 'try_on_ear', 'try_on_neck', 'selected_try_option');
DELETE FROM wp_termmeta WHERE meta_key IN ('try_on_head', 'try_on_ear', 'try_on_neck', 'selected_try_option');
DELETE FROM wp_commentmeta WHERE meta_key IN ('try_on_head', 'try_on_ear', 'try_on_neck', 'selected_try_option');

