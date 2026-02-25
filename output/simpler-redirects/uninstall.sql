-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpler_redirects_num_urls');
DELETE FROM wp_options WHERE option_name LIKE 'simpler_redirects_from_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'simpler_redirects_to_url_%';

