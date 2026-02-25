<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom-next-page');
delete_site_option('custom-next-page');
delete_option('custom-next-page-previouspagelink');
delete_site_option('custom-next-page-previouspagelink');
delete_option('custom-next-page-convert');
delete_site_option('custom-next-page-convert');
delete_option('custom-next-page-initialization');
delete_site_option('custom-next-page-initialization');
delete_option('custom-next-page-filter');
delete_site_option('custom-next-page-filter');
delete_option('custom-next-page-before-text');
delete_site_option('custom-next-page-before-text');
delete_option('custom-next-page-after-text');
delete_site_option('custom-next-page-after-text');
delete_option('custom-next-page-nextpagelink');
delete_site_option('custom-next-page-nextpagelink');
delete_option('custom-next-page-firstpagelink');
delete_site_option('custom-next-page-firstpagelink');
delete_option('custom-next-page-lastpagelink');
delete_site_option('custom-next-page-lastpagelink');

