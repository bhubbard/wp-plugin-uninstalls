-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carbon_custom_sidebars', 'nias_course_endpoint');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_course_data_migrated', 'usercertificate_code', 'first_name', 'last_name', 'usercertificate_course', 'usercertificate_date', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_course_data_migrated', 'usercertificate_code', 'first_name', 'last_name', 'usercertificate_course', 'usercertificate_date', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_course_data_migrated', 'usercertificate_code', 'first_name', 'last_name', 'usercertificate_course', 'usercertificate_date', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_course_data_migrated', 'usercertificate_code', 'first_name', 'last_name', 'usercertificate_course', 'usercertificate_date', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'certificate_code_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'certificate_code_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'certificate_code_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'certificate_code_%';

