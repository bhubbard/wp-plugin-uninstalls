<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('init_plugin_suite_fx_engine_keywords');
delete_site_option('init_plugin_suite_fx_engine_keywords');
delete_option('init_plugin_suite_fx_engine_snowfall');
delete_site_option('init_plugin_suite_fx_engine_snowfall');
delete_option('init_plugin_suite_fx_engine_grayscale');
delete_site_option('init_plugin_suite_fx_engine_grayscale');
delete_option('init_plugin_suite_fx_engine_preloader');
delete_site_option('init_plugin_suite_fx_engine_preloader');
delete_option('init_plugin_suite_fx_engine_inlinefmt');
delete_site_option('init_plugin_suite_fx_engine_inlinefmt');

