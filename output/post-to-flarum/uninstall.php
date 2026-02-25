<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_posttoflarum_activated');
delete_site_option('_posttoflarum_activated');
delete_option('_posttoflarum_create_link');
delete_site_option('_posttoflarum_create_link');
delete_option('_posttoflarum_forum_path');
delete_site_option('_posttoflarum_forum_path');
delete_option('_posttoflarum_token');
delete_site_option('_posttoflarum_token');
delete_option('_posttoflarum_forum_id');
delete_site_option('_posttoflarum_forum_id');
delete_option('_posttoflarum_db_version');
delete_site_option('_posttoflarum_db_version');

