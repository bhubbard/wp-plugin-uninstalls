-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leira-cron-jobs-footer-rated', 'cron', 'doing_cron');

