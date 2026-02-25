<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_exclude_child');
delete_site_option('ss_exclude_child');
delete_option('ss_easy_mode');
delete_site_option('ss_easy_mode');
delete_option('ss_show_children');
delete_site_option('ss_show_children');
delete_option('ss_manual_cats');
delete_site_option('ss_manual_cats');
delete_option('ss_template_mode');
delete_site_option('ss_template_mode');
delete_option('ss_template');
delete_site_option('ss_template');

