<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catrevorder-cat');
delete_site_option('catrevorder-cat');
delete_option('catrevorder-main');
delete_site_option('catrevorder-main');

