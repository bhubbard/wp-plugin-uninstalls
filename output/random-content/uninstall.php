<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rc_pro_banner_dismissed');
delete_site_option('rc_pro_banner_dismissed');

