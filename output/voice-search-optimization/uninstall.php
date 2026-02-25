<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voicseop_enable_text_search');
delete_site_option('voicseop_enable_text_search');
delete_option('voicseop_enable_voice_search');
delete_site_option('voicseop_enable_voice_search');
delete_option('voicseop_voice_search_timeout');
delete_site_option('voicseop_voice_search_timeout');
delete_option('voicseop_enable_voice_command');
delete_site_option('voicseop_enable_voice_command');
delete_option('voicseop_voice_command_timeout');
delete_site_option('voicseop_voice_command_timeout');
delete_option('voicseop_voice_command_position');
delete_site_option('voicseop_voice_command_position');
delete_option('voicseop_plugin_settings');
delete_site_option('voicseop_plugin_settings');

