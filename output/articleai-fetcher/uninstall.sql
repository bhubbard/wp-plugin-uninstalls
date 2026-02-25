-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('articleai_api_key', 'articleai_queues', 'cron');
DELETE FROM wp_options WHERE option_name LIKE 'articleai_queue_%';
DELETE FROM wp_options WHERE option_name LIKE 'articleai_frequency_%';
DELETE FROM wp_options WHERE option_name LIKE 'old_args_%';

