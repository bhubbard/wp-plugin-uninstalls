-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('devgirl_reviews_option', 'devgirl_reviews_style_select');

