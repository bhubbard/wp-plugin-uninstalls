<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stssm_redirect_to_settings');
delete_site_option('stssm_redirect_to_settings');
delete_option('stssm_sticky_placement');
delete_site_option('stssm_sticky_placement');
delete_option('stssm_pages_placement');
delete_site_option('stssm_pages_placement');
delete_option('stssm_posts_placement');
delete_site_option('stssm_posts_placement');
delete_option('stssm_icons_content');
delete_site_option('stssm_icons_content');
delete_option('stssm_icons_sticky');
delete_site_option('stssm_icons_sticky');
delete_option('stssm_icons_sticky_all');
delete_site_option('stssm_icons_sticky_all');
delete_option('stssm_content_icons_design');
delete_site_option('stssm_content_icons_design');
delete_option('stssm_sticky_icons_design');
delete_site_option('stssm_sticky_icons_design');

