<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ethoseo_gau_properties');
delete_site_option('ethoseo_gau_properties');
delete_option('ethoseo_gau_titleoverride');
delete_site_option('ethoseo_gau_titleoverride');
delete_option('ethoseo_gau_before');
delete_site_option('ethoseo_gau_before');
delete_option('ethoseo_gau_after');
delete_site_option('ethoseo_gau_after');
delete_option('ethoseo_gau_infooter');
delete_site_option('ethoseo_gau_infooter');
delete_option('ethoseo_gau_debug');
delete_site_option('ethoseo_gau_debug');
delete_option('ethoseo_gau_consoledebug');
delete_site_option('ethoseo_gau_consoledebug');
delete_option('ethoseo_gau_overridetitle');
delete_site_option('ethoseo_gau_overridetitle');
delete_option('ethoseo_gau_hide_ethoseo');
delete_site_option('ethoseo_gau_hide_ethoseo');
delete_option('ethoseo_gau_activated');
delete_site_option('ethoseo_gau_activated');
delete_option('ethoseo_gau_hidefor');
delete_site_option('ethoseo_gau_hidefor');

