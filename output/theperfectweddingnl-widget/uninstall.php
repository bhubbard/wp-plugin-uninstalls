<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpw_key');
delete_site_option('tpw_key');
delete_option('tpw_variant');
delete_site_option('tpw_variant');

