-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpzillow_zillow_settings', 'wpzillow_hidden_reviews', 'wpzillow_options', 'wpfbr_options');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

