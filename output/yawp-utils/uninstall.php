<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'yawp_utils_yawpchecked%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yawp_utils_yawpchecked');
delete_site_option('yawp_utils_yawpchecked');
delete_option('yawp_utils_yawpname');
delete_site_option('yawp_utils_yawpname');
delete_option('yawp_utils_yawpemail');
delete_site_option('yawp_utils_yawpemail');
delete_option('yawp_utils_yawpchecked2');
delete_site_option('yawp_utils_yawpchecked2');
delete_option('yawp_utils_yawpadminyes');
delete_site_option('yawp_utils_yawpadminyes');
delete_option('yawp_utils_SearchReplace');
delete_site_option('yawp_utils_SearchReplace');
delete_option('yawp_utils_sr_type');
delete_site_option('yawp_utils_sr_type');

