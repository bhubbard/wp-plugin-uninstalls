<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plctag_elementor_tag_list_active');
delete_site_option('plctag_elementor_tag_list_active');
delete_option('plctag_elementor_active');
delete_site_option('plctag_elementor_active');
delete_option('plcarticle_listview_active');
delete_site_option('plcarticle_listview_active');
delete_option('plcarticle_listview_slug');
delete_site_option('plcarticle_listview_slug');

