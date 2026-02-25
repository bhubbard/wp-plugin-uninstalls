-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whsfi_hide_show_featured_image_notice', 'whsfi_hide_all_image', 'whsfi_hide_admin_bar', 'whsfi_hide_howdy_text', 'whsfi_hide_admin_bar_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_whsfi_hide_featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('_whsfi_hide_featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('_whsfi_hide_featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_whsfi_hide_featured');

