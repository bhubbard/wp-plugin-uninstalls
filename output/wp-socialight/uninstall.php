<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-socialight-facebook');
delete_site_option('wp-socialight-facebook');
delete_option('wp-socialight-twitter');
delete_site_option('wp-socialight-twitter');
delete_option('wp-socialight-linkedin');
delete_site_option('wp-socialight-linkedin');
delete_option('wp-socialight-google');
delete_site_option('wp-socialight-google');
delete_option('wp-socialight-buffer');
delete_site_option('wp-socialight-buffer');
delete_option('wp-socialight-whatsapp');
delete_site_option('wp-socialight-whatsapp');
delete_option('wp-socialight-mail');
delete_site_option('wp-socialight-mail');
delete_option('wp-socialight-home');
delete_site_option('wp-socialight-home');
delete_option('wp-socialight-pages');
delete_site_option('wp-socialight-pages');

