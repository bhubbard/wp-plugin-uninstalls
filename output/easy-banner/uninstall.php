<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_banner_enabled');
delete_site_option('easy_banner_enabled');
delete_option('easy_banner_title');
delete_site_option('easy_banner_title');
delete_option('easy_banner_description');
delete_site_option('easy_banner_description');
delete_option('easy_banner_link_text');
delete_site_option('easy_banner_link_text');
delete_option('easy_banner_link');
delete_site_option('easy_banner_link');

