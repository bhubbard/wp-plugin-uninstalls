<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssn_sortby');
delete_site_option('ssn_sortby');
delete_option('ssn_show_all');
delete_site_option('ssn_show_all');
delete_option('ssn_exclude');
delete_site_option('ssn_exclude');
delete_option('ssn_hide_on_excluded');
delete_site_option('ssn_hide_on_excluded');
delete_option('ssn_show_on_home');
delete_site_option('ssn_show_on_home');
delete_option('ssn_show_empty');
delete_site_option('ssn_show_empty');
delete_option('ssn_a_heading');
delete_site_option('ssn_a_heading');
delete_option('ep_exclude_pages');
delete_site_option('ep_exclude_pages');

