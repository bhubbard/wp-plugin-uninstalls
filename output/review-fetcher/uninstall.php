<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grplugin_api_key');
delete_site_option('grplugin_api_key');
delete_option('grplugin_place_id');
delete_site_option('grplugin_place_id');
delete_option('grplugin_review_count');
delete_site_option('grplugin_review_count');
delete_option('grplugin_ai_review_summary');
delete_site_option('grplugin_ai_review_summary');
delete_option('grplugin_openai_key');
delete_site_option('grplugin_openai_key');

