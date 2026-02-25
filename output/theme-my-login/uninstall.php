<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_tml_dismissed_notices');
delete_site_option('_tml_dismissed_notices');
delete_option('theme_my_login');
delete_site_option('theme_my_login');
delete_option('tml_login_type');
delete_site_option('tml_login_type');
delete_option('_tml_installed_at');
delete_site_option('_tml_installed_at');
delete_option('_tml_updated_at');
delete_site_option('_tml_updated_at');
delete_option('_tml_previous_version');
delete_site_option('_tml_previous_version');
delete_option('_tml_version');
delete_site_option('_tml_version');
delete_option('tml_ajax');
delete_site_option('tml_ajax');
delete_option('tml_registration_type');
delete_site_option('tml_registration_type');
delete_option('tml_user_passwords');
delete_site_option('tml_user_passwords');
delete_option('tml_auto_login');
delete_site_option('tml_auto_login');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_slug' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('illegal_names');
delete_site_option('illegal_names');
delete_option('registration');
delete_site_option('registration');
delete_option('tml_use_permalinks');
delete_site_option('tml_use_permalinks');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

