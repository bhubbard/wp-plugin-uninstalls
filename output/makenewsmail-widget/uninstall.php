<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('makenewsmail_plugin_options');
delete_site_option('makenewsmail_plugin_options');
delete_option('makenewsmail_lister');
delete_site_option('makenewsmail_lister');
delete_option('makenewsmail_status');
delete_site_option('makenewsmail_status');
delete_option('widget_makenewsmail');
delete_site_option('widget_makenewsmail');
delete_option('username');
delete_site_option('username');
delete_option('apikey');
delete_site_option('apikey');

