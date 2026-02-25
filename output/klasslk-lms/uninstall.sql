-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('klasslklms_institute_display_id', 'klasslklms_institute_display_lms_url');

