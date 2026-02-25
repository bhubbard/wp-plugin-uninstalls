<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ld_phone');
delete_site_option('ld_phone');
delete_option('ld_zalo');
delete_site_option('ld_zalo');
delete_option('ld_facebook');
delete_site_option('ld_facebook');
delete_option('ld_messenger');
delete_site_option('ld_messenger');

