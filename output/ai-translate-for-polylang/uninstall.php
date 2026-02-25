<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_translate_new_post');
delete_site_option('ai_translate_new_post');
delete_option('ai_translate_prompt');
delete_site_option('ai_translate_prompt');
delete_option('ai_translate_llm');
delete_site_option('ai_translate_llm');
delete_option('ai_translate_claude_key');
delete_site_option('ai_translate_claude_key');
delete_option('ai_translate_claude_model');
delete_site_option('ai_translate_claude_model');
delete_option('ai_translate_openai_key');
delete_site_option('ai_translate_openai_key');
delete_option('ai_translate_openai_org');
delete_site_option('ai_translate_openai_org');
delete_option('ai_translate_openai_model');
delete_site_option('ai_translate_openai_model');
delete_option('ai_translate_gemini_model');
delete_site_option('ai_translate_gemini_model');
delete_option('ai_translate_gemini_key');
delete_site_option('ai_translate_gemini_key');

