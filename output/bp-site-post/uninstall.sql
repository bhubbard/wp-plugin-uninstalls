-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpsp_site_post_settings', 'bpsp_site_post_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', '_thumbnail_id', 'guest_name', 'guest_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', '_thumbnail_id', 'guest_name', 'guest_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', '_thumbnail_id', 'guest_name', 'guest_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpgps_group', 'bpgps_group_post_status', '_thumbnail_id', 'guest_name', 'guest_email');

