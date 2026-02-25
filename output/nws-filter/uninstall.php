<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nwsfilter_settings');
delete_site_option('nwsfilter_settings');
delete_option('nwsfilter_categories_auto_expand');
delete_site_option('nwsfilter_categories_auto_expand');
delete_option('nwsfilter_categories_before_filter');
delete_site_option('nwsfilter_categories_before_filter');
delete_option('nwsfilter_collapsed_default');
delete_site_option('nwsfilter_collapsed_default');
delete_option('nwsfilter_hide_selected_filters');
delete_site_option('nwsfilter_hide_selected_filters');

