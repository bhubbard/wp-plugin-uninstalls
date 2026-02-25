-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpairbnb_airbnb_settings', 'wpairbnb_hidden_reviews', 'wpairbnb_options', 'wpfbr_options');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

