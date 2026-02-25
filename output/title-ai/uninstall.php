<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('title_ai_openai_key');
delete_site_option('title_ai_openai_key');
delete_option('title_ai_tone');
delete_site_option('title_ai_tone');
delete_option('title_ai_max_length');
delete_site_option('title_ai_max_length');

