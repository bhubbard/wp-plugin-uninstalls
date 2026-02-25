<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('et_logrocket');
delete_site_option('et_logrocket');
delete_option('et_sentry_php');
delete_site_option('et_sentry_php');
delete_option('et_sentry_js');
delete_site_option('et_sentry_js');

