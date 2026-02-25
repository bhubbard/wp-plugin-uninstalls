<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('visualead_url');
delete_site_option('visualead_url');
delete_option('visual_widget');
delete_site_option('visual_widget');
delete_option('my_url');
delete_site_option('my_url');
delete_option('visualead_txt');
delete_site_option('visualead_txt');
delete_option('visualead_sub');
delete_site_option('visualead_sub');

