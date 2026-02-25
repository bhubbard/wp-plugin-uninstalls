<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('html_class_replace');
delete_site_option('html_class_replace');
delete_option('html_tag_replace');
delete_site_option('html_tag_replace');
delete_option('html_tag_replace_migration');
delete_site_option('html_tag_replace_migration');
delete_option('html_old_class');
delete_site_option('html_old_class');
delete_option('html_new_class');
delete_site_option('html_new_class');
delete_option('html_old_tag');
delete_site_option('html_old_tag');
delete_option('html_new_tag');
delete_site_option('html_new_tag');

