<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mind_settings');
delete_site_option('mind_settings');

// Delete Transients
delete_transient('_mind_welcome_screen_activation_redirect');
delete_site_transient('_mind_welcome_screen_activation_redirect');

