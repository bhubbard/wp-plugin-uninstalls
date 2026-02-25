-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('askai_option', 'askai_status', 'weglot_settings', 'oauth_nonce');

