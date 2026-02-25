-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsp_type', 'gsp_facebook', 'gsp_instagram', 'gsp_twitter', 'gsp_google', 'gsp_linkedin', 'gsp_youtube', 'gsp_myspace', 'gsp_pinterest', 'gsp_soundcloud', 'gsp_tumblr', 'gsp_name');

