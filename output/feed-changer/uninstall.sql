-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FeedChanger_init_redirect_after_activation_option', 'feedChanger');

