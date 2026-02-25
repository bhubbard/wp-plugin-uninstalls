-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('securitytxt_email_sent', 'securitytxt_archiveorg_request', 'securitytxt_hash', 'securitytxt_logs');
DELETE FROM wp_options WHERE option_name LIKE '%notification_delete';
DELETE FROM wp_options WHERE option_name LIKE '%securitytxt_email_date';
DELETE FROM wp_options WHERE option_name LIKE '%expires';

