<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rossyai_category');
delete_site_option('rossyai_category');
delete_option('rossyai_ff_redirect_to_settings');
delete_site_option('rossyai_ff_redirect_to_settings');

