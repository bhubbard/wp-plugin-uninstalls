-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfb_must_login_version', 'cfb_must_login_require_login', 'cfb_must_login_protect_rest_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cfb_must_login_cache_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('cfb_must_login_cache_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('cfb_must_login_cache_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cfb_must_login_cache_notice_dismissed');

