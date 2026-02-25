-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('note_email');
DELETE FROM wp_options WHERE option_name LIKE 'note_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'note_datepicker_%';

