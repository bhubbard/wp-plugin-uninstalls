-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('QSCM42_enabled_modules', 'QSCM42_header-html', 'QSCM42_footer-html', 'QSCM42_limit_logins_rescue_password', 'QSCM42_limit_logins_max_login_attempts', 'QSCM42_limit_logins_lockout_duration', 'QSCM42_limit_logins_extended_lockout_threshold', 'QSCM42_limit_logins_extended_lockout_duration', 'QSCM42_limit_logins_check_duration', 'QSCM42_maint-html-message', 'QSCM42_maint-status', 'QSCM42_remove-generator', 'QSCM42_remove-rss', 'QSCM42_remove-api', 'QSCM42_remove-includes', 'QSCM42_remove-emojis', 'QSCM42_remove-revisions', 'QSCM42_remove-wpjson', 'QSCM42_remove-xmlrpc', 'QSCM42_unlock_notice');

