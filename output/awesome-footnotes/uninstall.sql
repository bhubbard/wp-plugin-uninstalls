-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'awef_toc_cache_cleared', 'awef_llms_written', 'awef_llms_write_failed');

