<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nafu_rowcount');
delete_site_option('nafu_rowcount');
delete_option('nafu_saveRows');
delete_site_option('nafu_saveRows');
delete_option('nafu_saveClasses');
delete_site_option('nafu_saveClasses');
delete_option('nafu_saveContents');
delete_site_option('nafu_saveContents');
delete_option('nafu_slatheight');
delete_site_option('nafu_slatheight');
delete_option('nafu_slatwidth');
delete_site_option('nafu_slatwidth');
delete_option('nafu_slatspacing');
delete_site_option('nafu_slatspacing');
delete_option('nafu_fontsize');
delete_site_option('nafu_fontsize');
delete_option('nafu_showtooltip');
delete_site_option('nafu_showtooltip');
delete_option('nafu_layouttype');
delete_site_option('nafu_layouttype');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_browser_%', '_site_transient_browser_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

