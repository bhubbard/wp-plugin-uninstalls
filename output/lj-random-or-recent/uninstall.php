<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget-LJRandomOrRecent-titlerandom');
delete_site_option('widget-LJRandomOrRecent-titlerandom');
delete_option('widget-LJRandomOrRecent-titlerecent');
delete_site_option('widget-LJRandomOrRecent-titlerecent');
delete_option('widget-LJRandomOrRecent-post');
delete_site_option('widget-LJRandomOrRecent-post');
delete_option('widget-LJRandomOrRecent-page');
delete_site_option('widget-LJRandomOrRecent-page');
delete_option('widget-LJRandomOrRecent-category');
delete_site_option('widget-LJRandomOrRecent-category');
delete_option('widget-LJRandomOrRecent-tag');
delete_site_option('widget-LJRandomOrRecent-tag');
delete_option('widget-LJRandomOrRecent-default');
delete_site_option('widget-LJRandomOrRecent-default');
delete_option('widget-LJRandomOrRecent-numposts');
delete_site_option('widget-LJRandomOrRecent-numposts');

