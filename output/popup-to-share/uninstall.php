<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cabecera_popup');
delete_site_option('cabecera_popup');
delete_option('textocuer_popup');
delete_site_option('textocuer_popup');
delete_option('publi');
delete_site_option('publi');
delete_option('facebook');
delete_site_option('facebook');
delete_option('twitter');
delete_site_option('twitter');
delete_option('google');
delete_site_option('google');

