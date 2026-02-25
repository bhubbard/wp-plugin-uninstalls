<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('QSCM42_enabled_modules');
delete_site_option('QSCM42_enabled_modules');
delete_option('QSCM42_header-html');
delete_site_option('QSCM42_header-html');
delete_option('QSCM42_footer-html');
delete_site_option('QSCM42_footer-html');
delete_option('QSCM42_limit_logins_rescue_password');
delete_site_option('QSCM42_limit_logins_rescue_password');
delete_option('QSCM42_limit_logins_max_login_attempts');
delete_site_option('QSCM42_limit_logins_max_login_attempts');
delete_option('QSCM42_limit_logins_lockout_duration');
delete_site_option('QSCM42_limit_logins_lockout_duration');
delete_option('QSCM42_limit_logins_extended_lockout_threshold');
delete_site_option('QSCM42_limit_logins_extended_lockout_threshold');
delete_option('QSCM42_limit_logins_extended_lockout_duration');
delete_site_option('QSCM42_limit_logins_extended_lockout_duration');
delete_option('QSCM42_limit_logins_check_duration');
delete_site_option('QSCM42_limit_logins_check_duration');
delete_option('QSCM42_maint-html-message');
delete_site_option('QSCM42_maint-html-message');
delete_option('QSCM42_maint-status');
delete_site_option('QSCM42_maint-status');
delete_option('QSCM42_remove-generator');
delete_site_option('QSCM42_remove-generator');
delete_option('QSCM42_remove-rss');
delete_site_option('QSCM42_remove-rss');
delete_option('QSCM42_remove-api');
delete_site_option('QSCM42_remove-api');
delete_option('QSCM42_remove-includes');
delete_site_option('QSCM42_remove-includes');
delete_option('QSCM42_remove-emojis');
delete_site_option('QSCM42_remove-emojis');
delete_option('QSCM42_remove-revisions');
delete_site_option('QSCM42_remove-revisions');
delete_option('QSCM42_remove-wpjson');
delete_site_option('QSCM42_remove-wpjson');
delete_option('QSCM42_remove-xmlrpc');
delete_site_option('QSCM42_remove-xmlrpc');

// Delete Transients
delete_transient('QSCM42_unlock_notice');
delete_site_transient('QSCM42_unlock_notice');

