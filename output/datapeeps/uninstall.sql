-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('datapeeps_field_phone', 'datapeeps_field_cvr', 'datapeeps_field_pnum', 'datapeeps_api_username', 'datapeeps_api_password', 'datapeeps_used_phone_count', 'datapeeps_found_phone_count', 'datapeeps_used_cvr_count', 'datapeeps_found_cvr_count', 'datapeeps_used_pnum_count', 'datapeeps_found_pnum_count');
DELETE FROM wp_options WHERE option_name LIKE '%_count';

