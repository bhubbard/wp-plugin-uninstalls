-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redirect-url-to-post-onboarding', 'redirect-url-to-post-admin-notice', 'chatty_mango_rutp_transient_keys');
DELETE FROM wp_options WHERE option_name LIKE 'chatty_mango_rutp_post_ids-%';

