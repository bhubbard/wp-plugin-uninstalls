-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%api_key';
DELETE FROM wp_options WHERE option_name LIKE '%from_id';
DELETE FROM wp_options WHERE option_name LIKE '%admin_sms_recipients';
DELETE FROM wp_options WHERE option_name LIKE '%enable_admin_sms';
DELETE FROM wp_options WHERE option_name LIKE '%default_sms_template';
DELETE FROM wp_options WHERE option_name LIKE '%admin_sms_template';
DELETE FROM wp_options WHERE option_name LIKE '%enable_notes_sms';
DELETE FROM wp_options WHERE option_name LIKE '%note_sms_template';
DELETE FROM wp_options WHERE option_name LIKE '%_sms_template';

