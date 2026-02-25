<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Yeshourun_Access');
delete_site_option('Yeshourun_Access');
delete_option('Yeshourun_Brand');
delete_site_option('Yeshourun_Brand');
delete_option('Yeshourun_Create');
delete_site_option('Yeshourun_Create');

