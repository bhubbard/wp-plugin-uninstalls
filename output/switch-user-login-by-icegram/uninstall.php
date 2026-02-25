<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ig_sul_close_ssl_notice');
delete_site_option('ig_sul_close_ssl_notice');

