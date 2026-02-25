-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xtfe_user_token_options', 'xtfe_transient_keys', 'xtfe_fb_authorize_user', 'xtfe_fb_user_pages', 'xtfe_facebook_access_token');

