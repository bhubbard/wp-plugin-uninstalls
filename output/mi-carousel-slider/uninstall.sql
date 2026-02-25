-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('styling', 'sub_title', 'caption', 'button_one_url', 'button_one_text', 'button_one_target', 'button_two_url', 'button_two_text', 'button_two_target', 'url');
DELETE FROM wp_usermeta WHERE meta_key IN ('styling', 'sub_title', 'caption', 'button_one_url', 'button_one_text', 'button_one_target', 'button_two_url', 'button_two_text', 'button_two_target', 'url');
DELETE FROM wp_termmeta WHERE meta_key IN ('styling', 'sub_title', 'caption', 'button_one_url', 'button_one_text', 'button_one_target', 'button_two_url', 'button_two_text', 'button_two_target', 'url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('styling', 'sub_title', 'caption', 'button_one_url', 'button_one_text', 'button_one_target', 'button_two_url', 'button_two_text', 'button_two_target', 'url');

