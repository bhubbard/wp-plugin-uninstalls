<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('occ_titles_post_types');
delete_site_option('occ_titles_post_types');
delete_option('occ_titles_ai_provider');
delete_site_option('occ_titles_ai_provider');
delete_option('occ_titles_openai_api_key');
delete_site_option('occ_titles_openai_api_key');
delete_option('occ_titles_google_api_key');
delete_site_option('occ_titles_google_api_key');
delete_option('occ_titles_google_model');
delete_site_option('occ_titles_google_model');
delete_option('occ_titles_openai_model');
delete_site_option('occ_titles_openai_model');
delete_option('occ_titles_assistant_id');
delete_site_option('occ_titles_assistant_id');

