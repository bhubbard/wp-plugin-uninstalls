<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pp_admintab_show');
delete_site_option('pp_admintab_show');
delete_option('pp_clientuser_adminaccess');
delete_site_option('pp_clientuser_adminaccess');
delete_option('pp_clientuser_dashpage');
delete_site_option('pp_clientuser_dashpage');
delete_option('pp_set_logout_url');
delete_site_option('pp_set_logout_url');
delete_option('pp_regfields_list');
delete_site_option('pp_regfields_list');
delete_option('pp_contactfields_list');
delete_site_option('pp_contactfields_list');
delete_option('pp_contactemail_subject');
delete_site_option('pp_contactemail_subject');
delete_option('pp_contactemail_mailto');
delete_site_option('pp_contactemail_mailto');
delete_option('pp_contactemail_msg');
delete_site_option('pp_contactemail_msg');
delete_option('pp_icon_menu_item');
delete_site_option('pp_icon_menu_item');
delete_option('pp_my_theme_has_bootstrap');
delete_site_option('pp_my_theme_has_bootstrap');
delete_option('pp_chosen_form_style');
delete_site_option('pp_chosen_form_style');
delete_option('pp_formtoken');
delete_site_option('pp_formtoken');
delete_option('pp_ppprofile');
delete_site_option('pp_ppprofile');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pp_pplogin');
delete_site_option('pp_pplogin');
delete_option('pp_pppasswordrecovery');
delete_site_option('pp_pppasswordrecovery');

// Clear Cron Jobs
wp_clear_scheduled_hook('ppTokenGeneratorStarter');

