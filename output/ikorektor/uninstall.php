<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ik_wp_show');
delete_site_option('ik_wp_show');
delete_option('ik_adm_show');
delete_site_option('ik_adm_show');
delete_option('ik_always');
delete_site_option('ik_always');
delete_option('ik_uris');
delete_site_option('ik_uris');
delete_option('ik_wp_location');
delete_site_option('ik_wp_location');
delete_option('ik_adm_location');
delete_site_option('ik_adm_location');
delete_option('ik_wp_type');
delete_site_option('ik_wp_type');
delete_option('ik_adm_type');
delete_site_option('ik_adm_type');
delete_option('ik_wp_color');
delete_site_option('ik_wp_color');
delete_option('ik_adm_color');
delete_site_option('ik_adm_color');
delete_option('ik_wp_inputs');
delete_site_option('ik_wp_inputs');
delete_option('ik_adm_inputs');
delete_site_option('ik_adm_inputs');
delete_option('ik_wp_gateway');
delete_site_option('ik_wp_gateway');
delete_option('ik_adm_gateway');
delete_site_option('ik_adm_gateway');
delete_option('ik_wp_parags');
delete_site_option('ik_wp_parags');
delete_option('ik_adm_parags');
delete_site_option('ik_adm_parags');
delete_option('ik_wp_profanity');
delete_site_option('ik_wp_profanity');
delete_option('ik_adm_profanity');
delete_site_option('ik_adm_profanity');
delete_option('ik_wp_txtbg');
delete_site_option('ik_wp_txtbg');
delete_option('ik_adm_txtbg');
delete_site_option('ik_adm_txtbg');
delete_option('ik_wp_prompt');
delete_site_option('ik_wp_prompt');
delete_option('ik_adm_prompt');
delete_site_option('ik_adm_prompt');

