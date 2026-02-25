<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ethoseo_hide_ethoseo');
delete_site_option('ethoseo_hide_ethoseo');
delete_option('ethoseo_te_dictionary');
delete_site_option('ethoseo_te_dictionary');
delete_option('ethoseo_te_trackforms');
delete_site_option('ethoseo_te_trackforms');
delete_option('ethoseo_te_trackoutbound');
delete_site_option('ethoseo_te_trackoutbound');
delete_option('ethoseo_te_tracksearchforms');
delete_site_option('ethoseo_te_tracksearchforms');
delete_option('ethoseo_te_trackemail');
delete_site_option('ethoseo_te_trackemail');
delete_option('ethoseo_te_trackgooglerank');
delete_site_option('ethoseo_te_trackgooglerank');
delete_option('ethoseo_te_universal');
delete_site_option('ethoseo_te_universal');
delete_option('ethoseo_te_infooter');
delete_site_option('ethoseo_te_infooter');
delete_option('ethoseo_te_debug');
delete_site_option('ethoseo_te_debug');
delete_option('ethoseo_te_special');
delete_site_option('ethoseo_te_special');
delete_option('ethoseo_te_activated');
delete_site_option('ethoseo_te_activated');

