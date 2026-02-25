<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apfl_url');
delete_site_option('apfl_url');
delete_option('apfl_custom_contact_us');
delete_site_option('apfl_custom_contact_us');

