-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_custom_admin_bar');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_admin_bar_front');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_admin_bar_front');

