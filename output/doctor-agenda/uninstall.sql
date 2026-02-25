-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdoctorAgenda-email', 'wpdoctorAgenda-password', 'wpdoctorAgenda-installed', 'wp-doctorAgenda');

