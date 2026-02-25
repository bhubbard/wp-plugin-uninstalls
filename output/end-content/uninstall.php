<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ld_chosen_cats');
delete_site_option('ld_chosen_cats');
delete_option('ld_chosen_pages');
delete_site_option('ld_chosen_pages');
delete_option('ld_use_pages');
delete_site_option('ld_use_pages');
delete_option('ld_use_posts');
delete_site_option('ld_use_posts');
delete_option('ld_code_code');
delete_site_option('ld_code_code');
delete_option('ld_code_use_default_css');
delete_site_option('ld_code_use_default_css');

