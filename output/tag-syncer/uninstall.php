<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tagsyncer_tab1_option_name');
delete_site_option('tagsyncer_tab1_option_name');
delete_option('tagsyncer_tab2_option_name');
delete_site_option('tagsyncer_tab2_option_name');
delete_option('tagsyncer_tab3_option_name');
delete_site_option('tagsyncer_tab3_option_name');
delete_option('google_tag_manager_settings');
delete_site_option('google_tag_manager_settings');

