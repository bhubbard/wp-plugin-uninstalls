<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multilingual_text_languages');
delete_site_option('multilingual_text_languages');
delete_option('multilingual_text_show_single');
delete_site_option('multilingual_text_show_single');
delete_option('multilingual_text_flags_dir');
delete_site_option('multilingual_text_flags_dir');
delete_option('multilingual_text_title_order');
delete_site_option('multilingual_text_title_order');
delete_option('multilingual_text_flag_order');
delete_site_option('multilingual_text_flag_order');
delete_option('multilingual_text_flags_where');
delete_site_option('multilingual_text_flags_where');

