<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snillrik_settings_admintoolbar');
delete_site_option('snillrik_settings_admintoolbar');
delete_option('snillrik_settings_admintoolbar_role');
delete_site_option('snillrik_settings_admintoolbar_role');
delete_option('snillrik_settings_turnoffemail');
delete_site_option('snillrik_settings_turnoffemail');
delete_option('snillrik_settings_turnoffemail_email');
delete_site_option('snillrik_settings_turnoffemail_email');
delete_option('snillrik_settings_categorycolor');
delete_site_option('snillrik_settings_categorycolor');
delete_option('snillrik_settings_changeemail');
delete_site_option('snillrik_settings_changeemail');
delete_option('snillrik_settings_change_name');
delete_site_option('snillrik_settings_change_name');
delete_option('snillrik_settings_change_email');
delete_site_option('snillrik_settings_change_email');
delete_option('wp_mail_from');
delete_site_option('wp_mail_from');
delete_option('snillrik_settings_redirectlogin');
delete_site_option('snillrik_settings_redirectlogin');
delete_option('snillrik_settings_redirectlogout');
delete_site_option('snillrik_settings_redirectlogout');
delete_option('snillrik_settings_redirectprofile');
delete_site_option('snillrik_settings_redirectprofile');
delete_option('snillrik_settings_redirectlogin_page');
delete_site_option('snillrik_settings_redirectlogin_page');
delete_option('snillrik_settings_redirectlogout_page');
delete_site_option('snillrik_settings_redirectlogout_page');
delete_option('snillrik_settings_redirectprofile_page');
delete_site_option('snillrik_settings_redirectprofile_page');
delete_option('snillrik-settings-select-eagerness');
delete_site_option('snillrik-settings-select-eagerness');
delete_option('snillrik-settings-select-mode');
delete_site_option('snillrik-settings-select-mode');
delete_option('snillrik_settings_wootocheckout');
delete_site_option('snillrik_settings_wootocheckout');
delete_option('snillrik_settings_simplehoneypot');
delete_site_option('snillrik_settings_simplehoneypot');
delete_option('snillrik_settings_simplehoneypot_name');
delete_site_option('snillrik_settings_simplehoneypot_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'category_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'category_color' ) );

