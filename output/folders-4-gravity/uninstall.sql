-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins', 'gops_error', 'gops_notice');
DELETE FROM wp_options WHERE option_name LIKE '%rating_asked';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('go_f4g_view_order', '_gravityview_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('go_f4g_view_order', '_gravityview_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('go_f4g_view_order', '_gravityview_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('go_f4g_view_order', '_gravityview_form_id');

