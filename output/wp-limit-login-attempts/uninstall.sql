-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_of_wp_limit_login_attepts', 'limit_login_attepts_delay_time', 'limit_login_attepts_captcha', 'limit_login_captcha', 'limit_login_install_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_limit_login_nag_ignore', 'limit_login_rating_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_limit_login_nag_ignore', 'limit_login_rating_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_limit_login_nag_ignore', 'limit_login_rating_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_limit_login_nag_ignore', 'limit_login_rating_ignore_notice');

