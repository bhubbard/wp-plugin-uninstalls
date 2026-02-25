-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elcmt_csp', 'elcmt_description', 'elcmt_og_enabled', 'elcmt_og_title', 'elcmt_og_description', 'elcmt_og_image', 'elcmt_og_url', 'elcmt_twitter_enabled', 'elcmt_twitter_title', 'elcmt_twitter_description', 'elcmt_twitter_image', 'elcmt_twitter_card');

