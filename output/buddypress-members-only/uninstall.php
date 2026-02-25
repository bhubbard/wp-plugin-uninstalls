<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bprestrictrestapi');
delete_site_option('bprestrictrestapi');
delete_option('bpmoinitsetup');
delete_site_option('bpmoinitsetup');
delete_option('bpmofreecurrentversion');
delete_site_option('bpmofreecurrentversion');
delete_option('bpdisableallfeature');
delete_site_option('bpdisableallfeature');
delete_option('bpmoregisterpageurl');
delete_site_option('bpmoregisterpageurl');
delete_option('saved_open_page_url');
delete_site_option('saved_open_page_url');
delete_option('bprestrictsbuddypresssection');
delete_site_option('bprestrictsbuddypresssection');
delete_option('bpenablepagelevelprotect');
delete_site_option('bpenablepagelevelprotect');
delete_option('tomas_bbp_member_only_free_custom_links_login');
delete_site_option('tomas_bbp_member_only_free_custom_links_login');
delete_option('bpmemonlypro_enabled_post_type');
delete_site_option('bpmemonlypro_enabled_post_type');
delete_option('bpstandardcomponent');
delete_site_option('bpstandardcomponent');
delete_option('bpmo_user_first_run_guide_bar_free');
delete_site_option('bpmo_user_first_run_guide_bar_free');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'members_only_free_have_new_version_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bpopenedcustomizedcomponent');
delete_site_option('bpopenedcustomizedcomponent');
delete_option('bpenableaallbprssrestricts');
delete_site_option('bpenableaallbprssrestricts');
delete_option('bpenablerssrestricts');
delete_site_option('bpenablerssrestricts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bp_members_only_access_to_this_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bp_members_only_access_to_this_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bp_members_only_access_to_this_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bp_members_only_access_to_this_page' ) );

