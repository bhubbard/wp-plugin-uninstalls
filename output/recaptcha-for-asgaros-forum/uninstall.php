<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rfaf_recaptcha_version');
delete_site_option('rfaf_recaptcha_version');
delete_option('rfaf_recaptcha_site_key');
delete_site_option('rfaf_recaptcha_site_key');
delete_option('rfaf_recaptcha_server_key');
delete_site_option('rfaf_recaptcha_server_key');
delete_option('rfaf_recaptcha_language');
delete_site_option('rfaf_recaptcha_language');
delete_option('rfaf_recaptcha_v3_site_key');
delete_site_option('rfaf_recaptcha_v3_site_key');
delete_option('rfaf_recaptcha_v3_server_key');
delete_site_option('rfaf_recaptcha_v3_server_key');
delete_option('rfaf_recaptcha_v3_score');
delete_site_option('rfaf_recaptcha_v3_score');
delete_option('rfaf_recaptcha_registerd_user');
delete_site_option('rfaf_recaptcha_registerd_user');

