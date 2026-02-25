-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ess_twitter_username', 'ess_facebook', 'ess_twitter', 'ess_google', 'ess_pinterest', 'ess_linked_in', 'ess_email', 'ess_font_awe');

