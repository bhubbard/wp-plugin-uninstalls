<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fvp_sm_share_posts_active');
delete_site_option('fvp_sm_share_posts_active');
delete_option('fvp_sm_share_front_page_active');
delete_site_option('fvp_sm_share_front_page_active');
delete_option('fvp_sm_share_pages_active');
delete_site_option('fvp_sm_share_pages_active');
delete_option('fvp_sm_sharing_items_order');
delete_site_option('fvp_sm_sharing_items_order');
delete_option('fvp_sm_buttons_type');
delete_site_option('fvp_sm_buttons_type');
delete_option('fvp_sm_buttons_text');
delete_site_option('fvp_sm_buttons_text');
delete_option('fvp_sm_buttons_place');
delete_site_option('fvp_sm_buttons_place');

