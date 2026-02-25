<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('title');
delete_site_option('title');
delete_option('e_date');
delete_site_option('e_date');
delete_option('e_keyword');
delete_site_option('e_keyword');
delete_option('e_author');
delete_site_option('e_author');
delete_option('e_tag');
delete_site_option('e_tag');
delete_option('e_cats');
delete_site_option('e_cats');
delete_option('loadin_img');
delete_site_option('loadin_img');
delete_option('s_posts_per_page');
delete_site_option('s_posts_per_page');

