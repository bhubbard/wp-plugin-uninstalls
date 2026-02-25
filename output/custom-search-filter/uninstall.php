<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csf_title');
delete_site_option('csf_title');
delete_option('search_text_1');
delete_site_option('search_text_1');
delete_option('search_text_2');
delete_site_option('search_text_2');
delete_option('search_text_3');
delete_site_option('search_text_3');
delete_option('search_text_4');
delete_site_option('search_text_4');
delete_option('search_text_5');
delete_site_option('search_text_5');
delete_option('search_text_6');
delete_site_option('search_text_6');
delete_option('search_text_7');
delete_site_option('search_text_7');
delete_option('search_text_8');
delete_site_option('search_text_8');
delete_option('search_text_9');
delete_site_option('search_text_9');
delete_option('search_text_10');
delete_site_option('search_text_10');

