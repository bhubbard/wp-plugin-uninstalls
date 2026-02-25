<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buttonizer_buttons');
delete_site_option('buttonizer_buttons');
delete_option('buttonizer_buttons_published');
delete_site_option('buttonizer_buttons_published');
delete_option('buttonizer_rules');
delete_site_option('buttonizer_rules');
delete_option('buttonizer_rules_published');
delete_site_option('buttonizer_rules_published');
delete_option('buttonizer_schedules');
delete_site_option('buttonizer_schedules');
delete_option('buttonizer_schedules_published');
delete_site_option('buttonizer_schedules_published');
delete_option('buttonizer_has_changes');
delete_site_option('buttonizer_has_changes');
delete_option('buttonizer_buttons_backup_30');
delete_site_option('buttonizer_buttons_backup_30');
delete_option('buttonizer_buttons_published_backup_30');
delete_site_option('buttonizer_buttons_published_backup_30');
delete_option('buttonizer_has_changes_backup_30');
delete_site_option('buttonizer_has_changes_backup_30');
delete_option('buttonizer_rules_backup_30');
delete_site_option('buttonizer_rules_backup_30');
delete_option('buttonizer_rules_published_backup_30');
delete_site_option('buttonizer_rules_published_backup_30');
delete_option('buttonizer_schedules_backup_30');
delete_site_option('buttonizer_schedules_backup_30');
delete_option('buttonizer_schedules_published_backup_30');
delete_site_option('buttonizer_schedules_published_backup_30');
delete_option('buttonizer_settings_backup_30');
delete_site_option('buttonizer_settings_backup_30');
delete_option('buttonizer_settings');
delete_site_option('buttonizer_settings');
delete_option('button_contact_legacy');
delete_site_option('button_contact_legacy');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_account' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_site_connection' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pzf_phone');
delete_site_option('pzf_phone');
delete_option('pzf_color_phone');
delete_site_option('pzf_color_phone');
delete_option('pzf_phone2');
delete_site_option('pzf_phone2');
delete_option('pzf_color_phone2');
delete_site_option('pzf_color_phone2');
delete_option('pzf_phone3');
delete_site_option('pzf_phone3');
delete_option('pzf_color_phone3');
delete_site_option('pzf_color_phone3');
delete_option('pzf_phone_bar');
delete_site_option('pzf_phone_bar');
delete_option('pzf_zalo');
delete_site_option('pzf_zalo');
delete_option('pzf_telegram');
delete_site_option('pzf_telegram');
delete_option('pzf_instagram');
delete_site_option('pzf_instagram');
delete_option('pzf_youtube');
delete_site_option('pzf_youtube');
delete_option('pzf_tiktok');
delete_site_option('pzf_tiktok');
delete_option('pzf_linkfanpage');
delete_site_option('pzf_linkfanpage');
delete_option('pzf_linkmessenger');
delete_site_option('pzf_linkmessenger');
delete_option('pzf_whatsapp');
delete_site_option('pzf_whatsapp');
delete_option('pzf_viber');
delete_site_option('pzf_viber');
delete_option('pzf_linkggmap');
delete_site_option('pzf_linkggmap');
delete_option('pzf_color_linkggmap');
delete_site_option('pzf_color_linkggmap');
delete_option('pzf_contact_link');
delete_site_option('pzf_contact_link');
delete_option('pzf_color_contact');
delete_site_option('pzf_color_contact');
delete_option('pzf_enable_all_in_one');
delete_site_option('pzf_enable_all_in_one');
delete_option('pzf_note_all_in_one');
delete_site_option('pzf_note_all_in_one');
delete_option('pzf_note_bar_all_in_one');
delete_site_option('pzf_note_bar_all_in_one');
delete_option('pzf_color_all_in_one');
delete_site_option('pzf_color_all_in_one');
delete_option('pzf_icon_all_in_one');
delete_site_option('pzf_icon_all_in_one');
delete_option('pzf_hide_default_all_in_one');
delete_site_option('pzf_hide_default_all_in_one');
delete_option('pzf_color_contact_form');
delete_site_option('pzf_color_contact_form');
delete_option('pzf_color_showroom');
delete_site_option('pzf_color_showroom');
delete_option('setting_size');
delete_site_option('setting_size');
delete_option('pzf_location');
delete_site_option('pzf_location');
delete_option('pzf_location_bottom');
delete_site_option('pzf_location_bottom');
delete_option('pzf_hide_mobile');
delete_site_option('pzf_hide_mobile');
delete_option('pzf_hide_desktop');
delete_site_option('pzf_hide_desktop');
delete_option('pzf_off_effects');
delete_site_option('pzf_off_effects');
delete_option('pzf_id_fanpage');
delete_site_option('pzf_id_fanpage');
delete_option('pzf_color_fb');
delete_site_option('pzf_color_fb');
delete_option('logged_in_greeting');
delete_site_option('logged_in_greeting');
delete_option('pzf_enable_contact_form');
delete_site_option('pzf_enable_contact_form');
delete_option('pzf_bg_contact_form');
delete_site_option('pzf_bg_contact_form');
delete_option('pzf_max_w_contact_form');
delete_site_option('pzf_max_w_contact_form');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_site_connection', '_site_transient_%_site_connection' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

