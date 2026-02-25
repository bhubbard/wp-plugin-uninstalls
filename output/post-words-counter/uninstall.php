<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pstwc_displayLocation');
delete_site_option('pstwc_displayLocation');
delete_option('pstwc_wordCount');
delete_site_option('pstwc_wordCount');
delete_option('pstwc_characterCount');
delete_site_option('pstwc_characterCount');
delete_option('pstwc_readTime');
delete_site_option('pstwc_readTime');
delete_option('pstwc_headlineText');
delete_site_option('pstwc_headlineText');

