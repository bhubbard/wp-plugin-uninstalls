<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('talkify_tts_api_key');
delete_site_option('talkify_tts_api_key');
delete_option('talkify_tts_control_center');
delete_site_option('talkify_tts_control_center');
delete_option('talkify_tts_keyboard_commands');
delete_site_option('talkify_tts_keyboard_commands');
delete_option('talkify_tts_voice_commands');
delete_site_option('talkify_tts_voice_commands');
delete_option('talkify_tts_default_voice');
delete_site_option('talkify_tts_default_voice');
delete_option('talkify_tts_default_rate');
delete_site_option('talkify_tts_default_rate');
delete_option('talkify_tts_text_selecor');
delete_site_option('talkify_tts_text_selecor');
delete_option('talkify_tts_voice_picker');
delete_site_option('talkify_tts_voice_picker');
delete_option('talkify_tts_voice_class_filter');
delete_site_option('talkify_tts_voice_class_filter');
delete_option('talkify_tts_voice_culture_filter');
delete_site_option('talkify_tts_voice_culture_filter');
delete_option('talkify_tts_voice_language_filter');
delete_site_option('talkify_tts_voice_language_filter');
delete_option('talkify_tts_controlcenter_location');
delete_site_option('talkify_tts_controlcenter_location');
delete_option('talkify_tts_maximum_request_size');
delete_site_option('talkify_tts_maximum_request_size');

