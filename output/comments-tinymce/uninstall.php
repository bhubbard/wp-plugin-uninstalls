<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('comment_tinymce_heading_one');
delete_site_option('comment_tinymce_heading_one');
delete_option('comment_tinymce_heading_two');
delete_site_option('comment_tinymce_heading_two');
delete_option('comment_tinymce_heading_three');
delete_site_option('comment_tinymce_heading_three');
delete_option('comment_tinymce_heading_four');
delete_site_option('comment_tinymce_heading_four');
delete_option('comment_tinymce_heading_five');
delete_site_option('comment_tinymce_heading_five');
delete_option('comment_tinymce_heading_six');
delete_site_option('comment_tinymce_heading_six');
delete_option('comment_tinymce_media_btn');
delete_site_option('comment_tinymce_media_btn');
delete_option('comment_tinymce_pre_tag');
delete_site_option('comment_tinymce_pre_tag');
delete_option('comment_tinymce_blockquote');
delete_site_option('comment_tinymce_blockquote');
delete_option('comment_tinymce_code_text_tab');
delete_site_option('comment_tinymce_code_text_tab');
delete_option('comment_tinymce_in_edit_comment');
delete_site_option('comment_tinymce_in_edit_comment');

