<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SAMOForm_options');
delete_site_option('SAMOForm_options');
delete_option('SAMOFORM');
delete_site_option('SAMOFORM');

