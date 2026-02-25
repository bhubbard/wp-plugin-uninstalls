-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deletepages_410_max_404s', 'deletepages_410_options_version', 'deletepages_410_links_list', 'deletepages_410_all_in_list');

