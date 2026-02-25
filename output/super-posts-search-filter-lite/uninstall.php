<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vkssfl_search_text');
delete_site_option('vkssfl_search_text');
delete_option('vkssfl_default_cat');
delete_site_option('vkssfl_default_cat');
delete_option('vkssfl_excluded_cats');
delete_site_option('vkssfl_excluded_cats');
delete_option('vkssfl_clean_excluded_cats');
delete_site_option('vkssfl_clean_excluded_cats');
delete_option('vkssfl_cat_text');
delete_site_option('vkssfl_cat_text');
delete_option('vkssfl_cat_style');
delete_site_option('vkssfl_cat_style');

