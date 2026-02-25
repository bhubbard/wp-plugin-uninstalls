<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getsoapy_business_id');
delete_site_option('getsoapy_business_id');
delete_option('getsoapy_hide_fields');
delete_site_option('getsoapy_hide_fields');
delete_option('getsoapy_styles');
delete_site_option('getsoapy_styles');
delete_option('getsoapy_plugin_options');
delete_site_option('getsoapy_plugin_options');
delete_option('getsoapy_disable_styles');
delete_site_option('getsoapy_disable_styles');
delete_option('getsoapy_quote_in_pages');
delete_site_option('getsoapy_quote_in_pages');
delete_option('getsoapy_show_fab');
delete_site_option('getsoapy_show_fab');

