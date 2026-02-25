<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('printdoors_domain');
delete_site_option('printdoors_domain');
delete_option('printdoors_code');
delete_site_option('printdoors_code');
delete_option('printdoors_access_key');
delete_site_option('printdoors_access_key');
delete_option('printdoors_store_id');
delete_site_option('printdoors_store_id');

