<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shtb_adv_setting_opt');
delete_site_option('shtb_adv_setting_opt');
delete_option('shtb_adv_using_syntaxhighlighter');
delete_site_option('shtb_adv_using_syntaxhighlighter');
delete_option('shtb_adv_button_window_size');
delete_site_option('shtb_adv_button_window_size');
delete_option('shtb_adv_button_row');
delete_site_option('shtb_adv_button_row');
delete_option('shtb_adv_insert');
delete_site_option('shtb_adv_insert');
delete_option('shtb_adv_codebox');
delete_site_option('shtb_adv_codebox');
delete_option('shtb_adv_safe_mode');
delete_site_option('shtb_adv_safe_mode');
delete_option('allow_tab');
delete_site_option('allow_tab');
delete_option('syntaxhighlighter_settings');
delete_site_option('syntaxhighlighter_settings');
delete_option('wp_sh_language3');
delete_site_option('wp_sh_language3');
delete_option('wp_sh_language2');
delete_site_option('wp_sh_language2');
delete_option('wp_sh_setting_opt');
delete_site_option('wp_sh_setting_opt');
delete_option('wp_sh_version');
delete_site_option('wp_sh_version');
delete_option('shtb_adv_languages');
delete_site_option('shtb_adv_languages');
delete_option('wp_sh_gutter');
delete_site_option('wp_sh_gutter');
delete_option('shc_opt');
delete_site_option('shc_opt');
delete_option('shtb_adv_updated');
delete_site_option('shtb_adv_updated');
delete_option('shtb_adv_checkver_stamp');
delete_site_option('shtb_adv_checkver_stamp');

