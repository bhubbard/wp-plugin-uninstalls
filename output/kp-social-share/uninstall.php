<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kp_social_share_options');
delete_site_option('kp_social_share_options');
delete_option('kp_social_share_tools');
delete_site_option('kp_social_share_tools');

