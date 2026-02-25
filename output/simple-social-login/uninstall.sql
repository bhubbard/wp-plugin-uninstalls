-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('astoundify_simple_social_login', 'astoundify_simple_social_login_facebook', 'astoundify_simple_social_login_google', 'astoundify_simple_social_login_twitter');

