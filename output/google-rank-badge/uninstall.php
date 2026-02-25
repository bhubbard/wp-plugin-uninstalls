<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grankcolour');
delete_site_option('grankcolour');
delete_option('grank_credit');
delete_site_option('grank_credit');

