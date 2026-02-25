<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('universal_web_share_platform_options');
delete_site_option('universal_web_share_platform_options');

