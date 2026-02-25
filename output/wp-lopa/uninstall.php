<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lopa_show_before');
delete_site_option('lopa_show_before');
delete_option('lopa_before_id');
delete_site_option('lopa_before_id');
delete_option('lopa_show_after');
delete_site_option('lopa_show_after');
delete_option('lopa_after_id');
delete_site_option('lopa_after_id');
delete_option('lopa_show_links');
delete_site_option('lopa_show_links');
delete_option('lopa_show_prevnext');
delete_site_option('lopa_show_prevnext');
delete_option('lopa_prev_text');
delete_site_option('lopa_prev_text');
delete_option('lopa_next_text');
delete_site_option('lopa_next_text');
delete_option('lopa_switch_home');
delete_site_option('lopa_switch_home');
delete_option('lopa_switch_date');
delete_site_option('lopa_switch_date');
delete_option('lopa_switch_search');
delete_site_option('lopa_switch_search');
delete_option('lopa_switch_category');
delete_site_option('lopa_switch_category');
delete_option('lopa_switch_tag');
delete_site_option('lopa_switch_tag');
delete_option('lopa_switch_author');
delete_site_option('lopa_switch_author');
delete_option('lopa_show_css');
delete_site_option('lopa_show_css');

