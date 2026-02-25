-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptripadvisor_tripadvisor_settings', 'wptripadvisor_hidden_reviews', 'wptripadvisor_options', 'wpfbr_options');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

