<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Jquery_CN_Contact_options');
delete_site_option('Jquery_CN_Contact_options');

