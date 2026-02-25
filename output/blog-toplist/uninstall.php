<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('btl_ar');
delete_site_option('btl_ar');
delete_option('btl_tr');
delete_site_option('btl_tr');
delete_option('btl_pr');
delete_site_option('btl_pr');

