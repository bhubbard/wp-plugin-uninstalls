<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evtb_version');
delete_site_option('evtb_version');
delete_option('evtb_activation_time');
delete_site_option('evtb_activation_time');
delete_option('evtb_initial_save_version');
delete_site_option('evtb_initial_save_version');
delete_option('evtb_install_date');
delete_site_option('evtb_install_date');

