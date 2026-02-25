-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thrail_crm_email_settings', 'thrail_crm_inserted');
DELETE FROM wp_options WHERE option_name LIKE 'congratulatory_email_sent_time_%';

