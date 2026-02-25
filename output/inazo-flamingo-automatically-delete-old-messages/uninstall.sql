-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inazo_flamingo_auto_trash_version', 'inazo_flamingo_auto_trash_contact_days', 'inazo_flamingo_auto_trash_inbound_days', 'inazo_flamingo_auto_trash_outbound_days', 'inazo_flamingo_auto_trash_spam_days');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_contact_days';
DELETE FROM wp_options WHERE option_name LIKE '%_inbound_days';
DELETE FROM wp_options WHERE option_name LIKE '%_outbound_days';
DELETE FROM wp_options WHERE option_name LIKE '%_spam_days';

