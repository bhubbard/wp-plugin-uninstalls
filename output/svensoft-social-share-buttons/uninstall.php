<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('svensoft_social_share_buttons_options');
delete_site_option('svensoft_social_share_buttons_options');

