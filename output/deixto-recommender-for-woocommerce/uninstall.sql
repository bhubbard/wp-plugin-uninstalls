-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deixto_recommender_options', 'deixto_recommender_options_shortcode', 'deixto_recommender_options_Shortcode');

