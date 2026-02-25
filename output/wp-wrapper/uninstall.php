<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nabwrap_page');
delete_site_option('nabwrap_page');
delete_option('nabwrap_addlink');
delete_site_option('nabwrap_addlink');
delete_option('nabwrap_url');
delete_site_option('nabwrap_url');
delete_option('nabwrap_width');
delete_site_option('nabwrap_width');
delete_option('nabwrap_height');
delete_site_option('nabwrap_height');
delete_option('nabwrap_border');
delete_site_option('nabwrap_border');
delete_option('nabwrap_scroll');
delete_site_option('nabwrap_scroll');

