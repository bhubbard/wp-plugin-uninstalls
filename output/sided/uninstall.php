<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sided_sided_initiate_script');
delete_site_option('sided_sided_initiate_script');
delete_option('sided_sided_embed_placement_options');
delete_site_option('sided_sided_embed_placement_options');
delete_option('sided_sided_selected_network');
delete_site_option('sided_sided_selected_network');
delete_option('sided_sided_private_access_token');
delete_site_option('sided_sided_private_access_token');
delete_option('send_cats_to_sided');
delete_site_option('send_cats_to_sided');
delete_option('send_tags_to_sided');
delete_site_option('send_tags_to_sided');

