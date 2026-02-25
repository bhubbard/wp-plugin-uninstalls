<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eefsm_fb_plugin_options');
delete_site_option('eefsm_fb_plugin_options');
delete_option('eefsm_fb_plugin_options_appearance');
delete_site_option('eefsm_fb_plugin_options_appearance');
delete_option('eefsm_fb_plugin_options_pro');
delete_site_option('eefsm_fb_plugin_options_pro');

