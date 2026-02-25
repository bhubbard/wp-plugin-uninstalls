<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('akrabat_sl_base_url');
delete_site_option('akrabat_sl_base_url');

