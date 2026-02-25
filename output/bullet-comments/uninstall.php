<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('is_bullet_comments_verify');
delete_site_option('is_bullet_comments_verify');
delete_option('bullet_comments_style');
delete_site_option('bullet_comments_style');
delete_option('is_bullet_comments_guest_comment_verify');
delete_site_option('is_bullet_comments_guest_comment_verify');
delete_option('bullet_comments_split_text_input_c');
delete_site_option('bullet_comments_split_text_input_c');

