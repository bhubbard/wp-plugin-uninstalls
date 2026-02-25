<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kurs');
delete_site_option('kurs');
delete_option('valuta');
delete_site_option('valuta');

