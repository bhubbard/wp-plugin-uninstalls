<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asj_api');
delete_site_option('asj_api');
delete_option('asj_domain');
delete_site_option('asj_domain');

