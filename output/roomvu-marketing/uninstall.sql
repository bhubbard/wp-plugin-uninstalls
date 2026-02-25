-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rvm_cron_text', 'rvm_cron_text_runs', 'flash_error_message');
DELETE FROM wp_options WHERE option_name LIKE '%posts_settings';

