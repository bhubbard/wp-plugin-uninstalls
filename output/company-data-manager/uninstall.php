<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webpro_dde_cif');
delete_site_option('webpro_dde_cif');
delete_option('webpro_dde_entity_name');
delete_site_option('webpro_dde_entity_name');
delete_option('webpro_dde_postal_address');
delete_site_option('webpro_dde_postal_address');
delete_option('webpro_dde_phone');
delete_site_option('webpro_dde_phone');
delete_option('webpro_dde_email');
delete_site_option('webpro_dde_email');
delete_option('webpro_dde_website');
delete_site_option('webpro_dde_website');
delete_option('webpro_dde_facebook');
delete_site_option('webpro_dde_facebook');
delete_option('webpro_dde_x');
delete_site_option('webpro_dde_x');
delete_option('webpro_dde_youtube');
delete_site_option('webpro_dde_youtube');
delete_option('webpro_dde_instagram');
delete_site_option('webpro_dde_instagram');
delete_option('webpro_dde_linkedin');
delete_site_option('webpro_dde_linkedin');

