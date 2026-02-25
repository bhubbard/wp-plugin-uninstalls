<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onematix_chatbot_id');
delete_site_option('onematix_chatbot_id');
delete_option('onematix_show_everywhere');
delete_site_option('onematix_show_everywhere');
delete_option('onematix_show_only_selected');
delete_site_option('onematix_show_only_selected');
delete_option('onematix_selected_posts');
delete_site_option('onematix_selected_posts');
delete_option('onematix_excluded_posts');
delete_site_option('onematix_excluded_posts');
delete_option('onematix_chatbot_id2');
delete_site_option('onematix_chatbot_id2');
delete_option('onematix_show_everywhere2');
delete_site_option('onematix_show_everywhere2');
delete_option('onematix_show_only_selected2');
delete_site_option('onematix_show_only_selected2');
delete_option('onematix_selected_posts2');
delete_site_option('onematix_selected_posts2');
delete_option('onematix_excluded_posts2');
delete_site_option('onematix_excluded_posts2');

