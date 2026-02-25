<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tt_klass_width');
delete_site_option('tt_klass_width');
delete_option('tt_klass_height');
delete_site_option('tt_klass_height');
delete_option('tt_klass_btntype');
delete_site_option('tt_klass_btntype');
delete_option('tt_klass_show_at_top');
delete_site_option('tt_klass_show_at_top');
delete_option('tt_klass_show_at_bottom');
delete_site_option('tt_klass_show_at_bottom');
delete_option('tt_klass_show_on_page');
delete_site_option('tt_klass_show_on_page');
delete_option('tt_klass_show_on_post');
delete_site_option('tt_klass_show_on_post');
delete_option('tt_klass_margin_top');
delete_site_option('tt_klass_margin_top');
delete_option('tt_klass_margin_bottom');
delete_site_option('tt_klass_margin_bottom');
delete_option('tt_klass_margin_left');
delete_site_option('tt_klass_margin_left');
delete_option('tt_klass_margin_right');
delete_site_option('tt_klass_margin_right');

