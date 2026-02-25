<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vb_widget_forumpath');
delete_site_option('vb_widget_forumpath');
delete_option('vb_widget_avatar_dimensions');
delete_site_option('vb_widget_avatar_dimensions');
delete_option('vb_widget_forum_version');
delete_site_option('vb_widget_forum_version');
delete_option('vb_widget_absolute_path');
delete_site_option('vb_widget_absolute_path');
delete_option('widget_vbulletin_login');
delete_site_option('widget_vbulletin_login');

