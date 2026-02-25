<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsac_optionsframework');
delete_site_option('wsac_optionsframework');
delete_option('wsac_options');
delete_site_option('wsac_options');
delete_option('wsac');
delete_site_option('wsac');

