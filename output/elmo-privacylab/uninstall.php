<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elmo_code_v2');
delete_site_option('elmo_code_v2');
delete_option('elmo_language');
delete_site_option('elmo_language');
delete_option('elmo_code');
delete_site_option('elmo_code');

