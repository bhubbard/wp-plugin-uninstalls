<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crazy_egg_tracking_script');
delete_site_option('crazy_egg_tracking_script');
delete_option('cht_account_number');
delete_site_option('cht_account_number');

