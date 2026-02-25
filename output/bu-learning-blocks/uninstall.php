<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bulb_active');
delete_site_option('bulb_active');
delete_option('bulb_cpt_install_dialog');
delete_site_option('bulb_cpt_install_dialog');
delete_option('bulb_cpt_install');
delete_site_option('bulb_cpt_install');

