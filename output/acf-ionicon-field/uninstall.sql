-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_field_ionicon_icon_data', 'acf_field_ionicon_cdn_error');

