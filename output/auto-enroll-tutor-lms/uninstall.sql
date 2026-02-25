-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_course_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_auto_approve';

