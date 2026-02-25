<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkssc_enable_links_manager');
delete_site_option('linkssc_enable_links_manager');
delete_option('linkssc_default_css');
delete_site_option('linkssc_default_css');
delete_option('linkssc_facebook');
delete_site_option('linkssc_facebook');
delete_option('linkssc_fbcolors');
delete_site_option('linkssc_fbcolors');
delete_option('linkssc_template');
delete_site_option('linkssc_template');
delete_option('linkssc_template_b');
delete_site_option('linkssc_template_b');
delete_option('linkssc_template_a');
delete_site_option('linkssc_template_a');
delete_option('linkssc_orderby');
delete_site_option('linkssc_orderby');
delete_option('linkssc_order');
delete_site_option('linkssc_order');
delete_option('linkssc_howmany');
delete_site_option('linkssc_howmany');

