<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lianaautomation_contactform7_options');
delete_site_option('lianaautomation_contactform7_options');

