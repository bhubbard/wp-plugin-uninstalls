<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wccc-sandbox');
delete_site_option('wccc-sandbox');
delete_option('wccc-cert-activation');
delete_site_option('wccc-cert-activation');
delete_option('wccc-password');
delete_site_option('wccc-password');
delete_option('wccc-categories');
delete_site_option('wccc-categories');
delete_option('wccc-image');
delete_site_option('wccc-image');

