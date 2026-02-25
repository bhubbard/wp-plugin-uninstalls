-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pressmodo_demo_installed', 'bsr_data', 'bsr_page_size', 'bsr_update_site_url', 'bsr_results');

