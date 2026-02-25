<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpcp_view_count_option');
delete_site_option('cpcp_view_count_option');
delete_option('cpcp_view_label');
delete_site_option('cpcp_view_label');
delete_option('cpcp_word_count_option');
delete_site_option('cpcp_word_count_option');
delete_option('cpcp_word_label');
delete_site_option('cpcp_word_label');
delete_option('cpcp_char_count_option');
delete_site_option('cpcp_char_count_option');
delete_option('cpcp_char_label');
delete_site_option('cpcp_char_label');
delete_option('cpcp_display_content');
delete_site_option('cpcp_display_content');

