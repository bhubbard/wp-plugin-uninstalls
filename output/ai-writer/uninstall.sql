-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_writer_api_key', 'aiwriter_rate_us', 'wmc_redirect');

