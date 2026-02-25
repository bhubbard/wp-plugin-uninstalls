<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdroplogin');
delete_site_option('pdroplogin');
delete_option('pdroppw');
delete_site_option('pdroppw');
delete_option('pdropuid');
delete_site_option('pdropuid');
delete_option('pdropppal');
delete_site_option('pdropppal');
delete_option('pdropactive');
delete_site_option('pdropactive');

