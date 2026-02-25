-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hsbc_webp_clean_sweep_originals_cursor', 'hsbc_webp_job_lock');

