-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eeform_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'eeform_form_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'eeform_feedback_success_%';

