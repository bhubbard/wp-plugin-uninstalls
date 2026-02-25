-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themify_saved_colors', 'themify_saved_gradients');
DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('popup_page_view', 'popup_show_once', 'popup_limit_count', 'popup_show');
DELETE FROM wp_usermeta WHERE meta_key IN ('popup_page_view', 'popup_show_once', 'popup_limit_count', 'popup_show');
DELETE FROM wp_termmeta WHERE meta_key IN ('popup_page_view', 'popup_show_once', 'popup_limit_count', 'popup_show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('popup_page_view', 'popup_show_once', 'popup_limit_count', 'popup_show');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id';

