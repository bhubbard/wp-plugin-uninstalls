<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('token');
delete_site_option('token');
delete_option('showtitle');
delete_site_option('showtitle');
delete_option('showdate');
delete_site_option('showdate');
delete_option('linktext');
delete_site_option('linktext');
delete_option('yumpu_collections');
delete_site_option('yumpu_collections');

