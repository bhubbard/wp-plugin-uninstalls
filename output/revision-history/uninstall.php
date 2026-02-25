<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rh_adjust_title');
delete_site_option('rh_adjust_title');
delete_option('rh_title_class');
delete_site_option('rh_title_class');
delete_option('rh_show_page_revisions');
delete_site_option('rh_show_page_revisions');
delete_option('rh_show_post_revisions');
delete_site_option('rh_show_post_revisions');
delete_option('rh_show_autosaves');
delete_site_option('rh_show_autosaves');

