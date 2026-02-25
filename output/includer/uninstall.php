<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('includer_callrail_id');
delete_site_option('includer_callrail_id');
delete_option('includer_clicky_id');
delete_site_option('includer_clicky_id');
delete_option('includer_ga_id');
delete_site_option('includer_ga_id');
delete_option('includer_ga_enable');
delete_site_option('includer_ga_enable');
delete_option('includer_clicky_enable');
delete_site_option('includer_clicky_enable');
delete_option('includer_clickcease_enable');
delete_site_option('includer_clickcease_enable');
delete_option('includer_callrail_enable');
delete_site_option('includer_callrail_enable');

