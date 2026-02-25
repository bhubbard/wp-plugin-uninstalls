<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpscp_nop');
delete_site_option('wpscp_nop');
delete_option('wpscp_mnop');
delete_site_option('wpscp_mnop');
delete_option('wpscp_cat');
delete_site_option('wpscp_cat');
delete_option('wpscp_readmore');
delete_site_option('wpscp_readmore');
delete_option('wpscp_enable');
delete_site_option('wpscp_enable');
delete_option('wpscp_thumbnail_enable');
delete_site_option('wpscp_thumbnail_enable');
delete_option('wpscp_title_enable');
delete_site_option('wpscp_title_enable');
delete_option('wpscp_date_enable');
delete_site_option('wpscp_date_enable');
delete_option('wpscp_excerpt_enable');
delete_site_option('wpscp_excerpt_enable');
delete_option('wpscp_readmore_enable');
delete_site_option('wpscp_readmore_enable');
delete_option('wpscp_c_len');
delete_site_option('wpscp_c_len');
delete_option('wpscp_direction');
delete_site_option('wpscp_direction');
delete_option('wpscp_mousepause');
delete_site_option('wpscp_mousepause');
delete_option('wpscp_speed');
delete_site_option('wpscp_speed');
delete_option('wpscp_ptime');
delete_site_option('wpscp_ptime');

