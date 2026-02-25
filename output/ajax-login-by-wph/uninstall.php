<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajax-login-by-wph-registered-user-level');
delete_site_option('ajax-login-by-wph-registered-user-level');

