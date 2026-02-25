<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evg_google_recaptcha_setting_group');
delete_site_option('evg_google_recaptcha_setting_group');

