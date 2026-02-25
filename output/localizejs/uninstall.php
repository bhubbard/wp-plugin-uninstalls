<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('project_key');
delete_site_option('project_key');
delete_option('localizejs_settings_url_options');
delete_site_option('localizejs_settings_url_options');
delete_option('localizejs_settings_allow_inline_break_tags');
delete_site_option('localizejs_settings_allow_inline_break_tags');
delete_option('localizejs_settings_auto_approve');
delete_site_option('localizejs_settings_auto_approve');
delete_option('localizejs_settings_retranslate_on_new_phrases');
delete_site_option('localizejs_settings_retranslate_on_new_phrases');

