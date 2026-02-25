-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('captcha_at_plugin', 'captcha_at_fragprotect', 'captcha_at_proxy_enabled', 'captcha_at_public_key', 'captcha_at_host', 'captcha_at_rest_key', 'captcha_at_proxy_sdkjs_content', 'captcha_at_proxy_sdkjs_updated_at', 'captcha_at_errors_catched', 'captcha_at_version_sdk', 'captcha_at_update_available', 'captcha_at_update_version', 'captcha_at_update_url', 'captcha-at-notice-activation');

