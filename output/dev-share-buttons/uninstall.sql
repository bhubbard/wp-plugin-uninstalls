-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_css', 'dsb_facebook_icon_id', 'dsb_twitter_icon_id', 'dsb_linkedin_icon_id');

