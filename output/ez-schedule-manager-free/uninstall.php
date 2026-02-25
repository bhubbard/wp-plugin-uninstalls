<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ezscm_debug_mode');
delete_site_option('ezscm_debug_mode');
delete_option('ezscm_required_text');
delete_site_option('ezscm_required_text');
delete_option('ezscm_uninstall_keep_data');
delete_site_option('ezscm_uninstall_keep_data');
delete_option('ezscm_custom_css');
delete_site_option('ezscm_custom_css');

