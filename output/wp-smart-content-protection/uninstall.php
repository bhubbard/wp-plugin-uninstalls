<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpscp_right_click');
delete_site_option('wpscp_right_click');
delete_option('wpscp_copy');
delete_site_option('wpscp_copy');
delete_option('wpscp_cut');
delete_site_option('wpscp_cut');
delete_option('wpscp_paste');
delete_site_option('wpscp_paste');

