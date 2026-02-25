<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtt_blogname_list');
delete_site_option('rtt_blogname_list');
delete_option('rtt_blogname_behavior');
delete_site_option('rtt_blogname_behavior');
delete_option('rtt_blogname_offset');
delete_site_option('rtt_blogname_offset');
delete_option('rtt_blogname_startdate');
delete_site_option('rtt_blogname_startdate');
delete_option('rtt_blogname_repeat');
delete_site_option('rtt_blogname_repeat');

