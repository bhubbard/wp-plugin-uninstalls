-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsr_page_size', 'bsr_data', 'active_sitewide_plugins', 'bsr_update_site_url', 'bsr_results');

