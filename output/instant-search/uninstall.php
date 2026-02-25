<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('instant_search_post_types');
delete_site_option('instant_search_post_types');
delete_option('instant_search_display_style');
delete_site_option('instant_search_display_style');
delete_option('instant_search_placeholder');
delete_site_option('instant_search_placeholder');
delete_option('instant_search_form_width');
delete_site_option('instant_search_form_width');
delete_option('instant_search_form_width2');
delete_site_option('instant_search_form_width2');
delete_option('instant_search_method');
delete_site_option('instant_search_method');
delete_option('instant_search_enable_voice_search');
delete_site_option('instant_search_enable_voice_search');
delete_option('instant_search_results_per_page');
delete_site_option('instant_search_results_per_page');

