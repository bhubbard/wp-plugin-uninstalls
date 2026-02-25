-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('okcrmc_options', 'content_reminder_options', 'cur_options');

