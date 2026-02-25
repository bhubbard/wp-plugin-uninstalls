<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdwc_recaptcha_keys');
delete_site_option('sdwc_recaptcha_keys');

