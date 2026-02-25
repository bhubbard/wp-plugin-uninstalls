<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('smdps_smdp_btn_frontpage_only');
delete_site_option('smdps_smdp_btn_frontpage_only');
delete_option('smdps_smdp_bckgrd_color');
delete_site_option('smdps_smdp_bckgrd_color');
delete_option('smdps_smdp_icn_color');
delete_site_option('smdps_smdp_icn_color');
delete_option('smdps_smdp_fnt_color');
delete_site_option('smdps_smdp_fnt_color');
delete_option('smdps_smdp_btnlink_url');
delete_site_option('smdps_smdp_btnlink_url');
delete_option('smdps_smdp_btnlink_target');
delete_site_option('smdps_smdp_btnlink_target');
delete_option('smdps_smdp_btn_title');
delete_site_option('smdps_smdp_btn_title');
delete_option('smdps_smdp_btn_descr');
delete_site_option('smdps_smdp_btn_descr');
delete_option('smdps_smdp_btn_bottomdist');
delete_site_option('smdps_smdp_btn_bottomdist');
delete_option('smdps_smdp_btn_bottomdist_mobi');
delete_site_option('smdps_smdp_btn_bottomdist_mobi');
delete_option('smdps_smdp_btn_icn_size');
delete_site_option('smdps_smdp_btn_icn_size');
delete_option('smdps_smdp_btn_fa_cls');
delete_site_option('smdps_smdp_btn_fa_cls');
delete_option('smdps_smdp_btn_icn_topmargin');
delete_site_option('smdps_smdp_btn_icn_topmargin');
delete_option('smdps_smdp_btn_leftdistanse');
delete_site_option('smdps_smdp_btn_leftdistanse');
delete_option('smdps_smdp_btn_contntopen');
delete_site_option('smdps_smdp_btn_contntopen');
delete_option('smdp_usrrefid');
delete_site_option('smdp_usrrefid');
delete_option('smdp_usrcommission');
delete_site_option('smdp_usrcommission');

