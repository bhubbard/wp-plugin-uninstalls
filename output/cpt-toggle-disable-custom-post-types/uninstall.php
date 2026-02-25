<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cptt_dcp_disabled');
delete_site_option('cptt_dcp_disabled');
delete_option('cpt_toggle_disabled');
delete_site_option('cpt_toggle_disabled');
delete_option('cptt_dcp_all_cpts');
delete_site_option('cptt_dcp_all_cpts');
delete_option('cpt_toggle_all_cpts');
delete_site_option('cpt_toggle_all_cpts');

