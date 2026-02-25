<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uniplace_charset');
delete_site_option('uniplace_charset');
delete_option('uniplace_site_hash');
delete_site_option('uniplace_site_hash');

