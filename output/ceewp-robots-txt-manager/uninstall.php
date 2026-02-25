<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ceewp_rtm_custom_rules');
delete_site_option('ceewp_rtm_custom_rules');
delete_option('ceewp_rtm_replace_mode');
delete_site_option('ceewp_rtm_replace_mode');

