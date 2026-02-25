-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%always_display';
DELETE FROM wp_options WHERE option_name LIKE '%notify';
DELETE FROM wp_options WHERE option_name LIKE '%always_approve_topics';
DELETE FROM wp_options WHERE option_name LIKE '%always_approve_replies';
DELETE FROM wp_options WHERE option_name LIKE '%previously_approved';

