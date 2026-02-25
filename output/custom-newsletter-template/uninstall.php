<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnt-template-page-id');
delete_site_option('cnt-template-page-id');
delete_option('cnt-header-img');
delete_site_option('cnt-header-img');
delete_option('cnt-ads1-img');
delete_site_option('cnt-ads1-img');
delete_option('cnt-ads1-link');
delete_site_option('cnt-ads1-link');
delete_option('cnt-ads2-img');
delete_site_option('cnt-ads2-img');
delete_option('cnt-ads2-link');
delete_site_option('cnt-ads2-link');
delete_option('cnt-social-img');
delete_site_option('cnt-social-img');
delete_option('cnt-social-link');
delete_site_option('cnt-social-link');
delete_option('cnt-todays-featured-title');
delete_site_option('cnt-todays-featured-title');
delete_option('cnt-featured-articles-title');
delete_site_option('cnt-featured-articles-title');
delete_option('cnt-footer-content');
delete_site_option('cnt-footer-content');
delete_option('cnt-footer-bgcolor');
delete_site_option('cnt-footer-bgcolor');
delete_option('cnt-link-color');
delete_site_option('cnt-link-color');
delete_option('cnt-font-color');
delete_site_option('cnt-font-color');
delete_option('cnt-font-color-date');
delete_site_option('cnt-font-color-date');
delete_option('cnt-read-more-text');
delete_site_option('cnt-read-more-text');
delete_option('cnt-background-repeat');
delete_site_option('cnt-background-repeat');
delete_option('cnt-background-color');
delete_site_option('cnt-background-color');
delete_option('cnt-favicon');
delete_site_option('cnt-favicon');
delete_option('cnt-page-title');
delete_site_option('cnt-page-title');
delete_option('cnt-featured-articles-post-count');
delete_site_option('cnt-featured-articles-post-count');
delete_option('cnt-sidebar-post-count');
delete_site_option('cnt-sidebar-post-count');
delete_option('cnt-bg-img');
delete_site_option('cnt-bg-img');
delete_option('cnt-sidebar-img');
delete_site_option('cnt-sidebar-img');

