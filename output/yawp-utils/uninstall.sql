-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yawp_utils_yawpchecked', 'yawp_utils_yawpname', 'yawp_utils_yawpemail', 'yawp_utils_yawpchecked2', 'yawp_utils_yawpadminyes', 'yawp_utils_SearchReplace', 'yawp_utils_sr_type');
DELETE FROM wp_options WHERE option_name LIKE 'yawp_utils_yawpchecked%';

