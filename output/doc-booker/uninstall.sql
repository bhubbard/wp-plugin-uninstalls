-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdbb_last_cleanup_run', 'wpddb_version', 'wpddb_page_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpddb_doctor_designation', 'wpddb_doctor_speciality', 'wpddb_doctor_degree', 'wpddb_doctor_workplace', 'wpddb_doctor_schedule', 'wpddb_doctor_available_clinic', 'wpddb_clinics_info', 'wpddb_clinic_email', 'wpddb_clinic_hotline', 'wpddb_clinic_latitude', 'wpddb_clinic_longitude', 'wpddb_clinic_address', '_wp_attachment_image_alt', 'wpddb_doctor_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpddb_doctor_designation', 'wpddb_doctor_speciality', 'wpddb_doctor_degree', 'wpddb_doctor_workplace', 'wpddb_doctor_schedule', 'wpddb_doctor_available_clinic', 'wpddb_clinics_info', 'wpddb_clinic_email', 'wpddb_clinic_hotline', 'wpddb_clinic_latitude', 'wpddb_clinic_longitude', 'wpddb_clinic_address', '_wp_attachment_image_alt', 'wpddb_doctor_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpddb_doctor_designation', 'wpddb_doctor_speciality', 'wpddb_doctor_degree', 'wpddb_doctor_workplace', 'wpddb_doctor_schedule', 'wpddb_doctor_available_clinic', 'wpddb_clinics_info', 'wpddb_clinic_email', 'wpddb_clinic_hotline', 'wpddb_clinic_latitude', 'wpddb_clinic_longitude', 'wpddb_clinic_address', '_wp_attachment_image_alt', 'wpddb_doctor_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpddb_doctor_designation', 'wpddb_doctor_speciality', 'wpddb_doctor_degree', 'wpddb_doctor_workplace', 'wpddb_doctor_schedule', 'wpddb_doctor_available_clinic', 'wpddb_clinics_info', 'wpddb_clinic_email', 'wpddb_clinic_hotline', 'wpddb_clinic_latitude', 'wpddb_clinic_longitude', 'wpddb_clinic_address', '_wp_attachment_image_alt', 'wpddb_doctor_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpddb_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpddb_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpddb_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpddb_%';

