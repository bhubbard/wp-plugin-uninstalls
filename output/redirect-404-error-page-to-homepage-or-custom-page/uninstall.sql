-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvofw_db_version', 'wpvofw_activation_date');
DELETE FROM wp_options WHERE option_name LIKE '%last_reminder_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('feedback_form_submitted');
DELETE FROM wp_usermeta WHERE meta_key IN ('feedback_form_submitted');
DELETE FROM wp_termmeta WHERE meta_key IN ('feedback_form_submitted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('feedback_form_submitted');

