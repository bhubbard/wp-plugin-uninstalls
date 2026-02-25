<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('legalpages_website');
delete_site_option('legalpages_website');
delete_option('legalpages_email');
delete_site_option('legalpages_email');
delete_option('legalpages_phone');
delete_site_option('legalpages_phone');
delete_option('legalpages_country');
delete_site_option('legalpages_country');

