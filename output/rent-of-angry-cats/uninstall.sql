-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dscc_admin_googleipikey', 'dscc_admin_listitem_count', 'dscc_admin_filter_radius', 'dscc_admin_lb_pager', 'dscc_admin_lb_autoplay', 'dscc_admin_lb_zoom', 'dscc_admin_lb_fullscreen', 'dscc_admin_lb_hash', 'dscc_admin_lb_share', 'dscc_admin_lb_thumbnail', 'dscc_admin_lb_rotate', 'dscc_filter_type_show');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dscc_timearrea', 'dscc_datearrea', 'dscc_latitude', 'dscc_longitude', 'dscc_time_from_rate', 'dscc_time_to_rate', 'dscc_tsbletype', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('dscc_timearrea', 'dscc_datearrea', 'dscc_latitude', 'dscc_longitude', 'dscc_time_from_rate', 'dscc_time_to_rate', 'dscc_tsbletype', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('dscc_timearrea', 'dscc_datearrea', 'dscc_latitude', 'dscc_longitude', 'dscc_time_from_rate', 'dscc_time_to_rate', 'dscc_tsbletype', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dscc_timearrea', 'dscc_datearrea', 'dscc_latitude', 'dscc_longitude', 'dscc_time_from_rate', 'dscc_time_to_rate', 'dscc_tsbletype', '_wp_attachment_image_alt');

