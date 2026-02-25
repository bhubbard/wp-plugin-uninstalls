<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CAT_recaptcha_api_keys');
delete_site_option('CAT_recaptcha_api_keys');

