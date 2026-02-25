-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kainoslt_woofeed_last_run', 'kainoslt_woofeed_settings', 'kainoslt_woofeed_regen_pending');

