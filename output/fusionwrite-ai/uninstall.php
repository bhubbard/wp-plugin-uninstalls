<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fswrt_openai_key');
delete_site_option('fswrt_openai_key');
delete_option('fswrt_gemini_key');
delete_site_option('fswrt_gemini_key');
delete_option('fswrt_stability_key');
delete_site_option('fswrt_stability_key');
delete_option('fswrt_gemini_model_name');
delete_site_option('fswrt_gemini_model_name');

