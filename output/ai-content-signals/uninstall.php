<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_acs_settings');
delete_site_option('ayudawp_acs_settings');

// Delete Transients
delete_transient('ayudawp_acs_activation_notice');
delete_site_transient('ayudawp_acs_activation_notice');
delete_transient('ayudawp_acs_robots_cache');
delete_site_transient('ayudawp_acs_robots_cache');

