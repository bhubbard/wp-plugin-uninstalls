<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('planet9_available_languages');
delete_site_option('planet9_available_languages');
delete_option('planet9_openai_api_key');
delete_site_option('planet9_openai_api_key');
delete_option('planet9_knowledge_base');
delete_site_option('planet9_knowledge_base');
delete_option('planet9_openai_system_prompt');
delete_site_option('planet9_openai_system_prompt');
delete_option('planet9_classic_editor_enabled');
delete_site_option('planet9_classic_editor_enabled');

