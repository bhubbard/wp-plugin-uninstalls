-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2csdnblog_title', 'wp2csdnblog_user', 'wp2csdnblog_password', 'wp2csdnblog_url', 'wp2sinablog_user', 'wp2sinablog_pass', 'wp2neteaseblog_user', 'wp2neteaseblog_pass', 'wp2csdnblog_issync', 'wp2csdnblog_isaddlink');

