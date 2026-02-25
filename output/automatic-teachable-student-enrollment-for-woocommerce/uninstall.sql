-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('teachable_fild_is_published', 'atsew_license_key', 'atsew_license_expiry_date', 'atsew_license_last_check_date', 'teachable_fild_order_status', 'teachable_fild_teachable_api_key', 'teachable_fild_atsew_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'teachable_course_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'teachable_course_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'teachable_course_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'teachable_course_id_%';

