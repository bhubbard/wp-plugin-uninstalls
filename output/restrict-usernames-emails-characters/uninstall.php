<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('benrueeg_rue_opt_wordpress_core_version');
delete_site_option('benrueeg_rue_opt_wordpress_core_version');
delete_option('BENrueeg_RUE_settings');
delete_site_option('BENrueeg_RUE_settings');
delete_option('registration');
delete_site_option('registration');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('BENrueeg_RUE_settings_Tw');
delete_site_option('BENrueeg_RUE_settings_Tw');
delete_option('restrict_usernames_emails_characters_ver_base');
delete_site_option('restrict_usernames_emails_characters_ver_base');
delete_option('benrueeg_rue_wordpress_core_nace');
delete_site_option('benrueeg_rue_wordpress_core_nace');
delete_option('benrueeg_nicename_msg_only_store_all_ids');
delete_site_option('benrueeg_nicename_msg_only_store_all_ids');
delete_option('benrueeg_nicename_store_all_users_id');
delete_site_option('benrueeg_nicename_store_all_users_id');
delete_option('benrueeg_n_store_all_completed_ids');
delete_site_option('benrueeg_n_store_all_completed_ids');
delete_option('benrueeg_rue_1_7____notice');
delete_site_option('benrueeg_rue_1_7____notice');
delete_option('benrueeg_nicename_error_store_all_users_id');
delete_site_option('benrueeg_nicename_error_store_all_users_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_remove_file_update_db' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_remove_file_update_db' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_remove_file_update_db' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_remove_file_update_db' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_empty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_empty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_empty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_empty' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_invalid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_invalid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_invalid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'benrueeg_rue_mgs_selectedLanguage_invalid' ) );

