<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lpt_setting_options');
delete_site_option('lpt_setting_options');
delete_option('pt_setting_options');
delete_site_option('pt_setting_options');

