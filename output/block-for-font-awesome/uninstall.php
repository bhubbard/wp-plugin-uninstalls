<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fa_enqueue_fa7_fe');
delete_site_option('fa_enqueue_fa7_fe');
delete_option('fa_enqueue_fa6_fe');
delete_site_option('fa_enqueue_fa6_fe');
delete_option('fa_enqueue_fe');
delete_site_option('fa_enqueue_fe');
delete_option('fa_enqueue_kit');
delete_site_option('fa_enqueue_kit');
delete_option('fa_enqueue_kit_fe');
delete_site_option('fa_enqueue_kit_fe');
delete_option('fa_enqueue_local_fe');
delete_site_option('fa_enqueue_local_fe');
delete_option('fa_external_css');
delete_site_option('fa_external_css');
delete_option('fa_enqueue_fa_source');
delete_site_option('fa_enqueue_fa_source');
delete_option('fa_enqueue_fa7_be');
delete_site_option('fa_enqueue_fa7_be');
delete_option('fa_enqueue_fa6_be');
delete_site_option('fa_enqueue_fa6_be');
delete_option('fa_enqueue_be');
delete_site_option('fa_enqueue_be');
delete_option('fa_enqueue_kit_be');
delete_site_option('fa_enqueue_kit_be');
delete_option('fa_enqueue_local_be');
delete_site_option('fa_enqueue_local_be');
delete_option('fa_enqueue_fa6_setup');
delete_site_option('fa_enqueue_fa6_setup');
delete_option('fa_enqueue_fa6_source');
delete_site_option('fa_enqueue_fa6_source');
delete_option('fa_enqueue_fa7_source');
delete_site_option('fa_enqueue_fa7_source');

