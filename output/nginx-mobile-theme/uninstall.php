<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nginxmobile_mobile_themes');
delete_site_option('nginxmobile_mobile_themes');

