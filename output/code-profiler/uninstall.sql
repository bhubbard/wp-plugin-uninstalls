-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('code-profiler', 'ms_files_rewriting', 'doing_cron');

