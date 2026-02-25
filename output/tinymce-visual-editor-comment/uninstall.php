<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobilesp');
delete_site_option('mobilesp');
delete_option('ltr_rtf');
delete_site_option('ltr_rtf');
delete_option('mediabtn');
delete_site_option('mediabtn');

