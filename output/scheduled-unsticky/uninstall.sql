-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scheduled_unsticky_days', 'scheduled_unsticky_cron');

