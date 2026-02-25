-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bannerwoo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bannerwoo_unit_time', 'bannerwoo_size_select', 'bannerwoo_max_rotation', '_tipo', '_current_rot');
DELETE FROM wp_usermeta WHERE meta_key IN ('bannerwoo_unit_time', 'bannerwoo_size_select', 'bannerwoo_max_rotation', '_tipo', '_current_rot');
DELETE FROM wp_termmeta WHERE meta_key IN ('bannerwoo_unit_time', 'bannerwoo_size_select', 'bannerwoo_max_rotation', '_tipo', '_current_rot');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bannerwoo_unit_time', 'bannerwoo_size_select', 'bannerwoo_max_rotation', '_tipo', '_current_rot');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expire';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_order_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_order_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_order_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_order_date';

