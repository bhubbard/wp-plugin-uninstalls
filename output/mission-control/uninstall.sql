-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('missioncontrol_options', 'upload_space_check_disabled');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

