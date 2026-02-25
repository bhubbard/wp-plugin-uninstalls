<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ari_cf7connector_redirect');
delete_site_option('ari_cf7connector_redirect');

