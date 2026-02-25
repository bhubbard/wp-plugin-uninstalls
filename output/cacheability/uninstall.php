<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cacheability_pro_notice_dismissed');
delete_site_option('cacheability_pro_notice_dismissed');

