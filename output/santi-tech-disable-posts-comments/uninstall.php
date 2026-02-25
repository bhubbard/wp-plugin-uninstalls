<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('santitech_dcpc_disable_comments');
delete_site_option('santitech_dcpc_disable_comments');
delete_option('santitech_dcpc_disable_posts');
delete_site_option('santitech_dcpc_disable_posts');
delete_option('santitech_dcpc_disable_gutenberg');
delete_site_option('santitech_dcpc_disable_gutenberg');
delete_option('santitech_dcpc_allow_svg');
delete_site_option('santitech_dcpc_allow_svg');
delete_option('santitech_dcpc_allow_ico');
delete_site_option('santitech_dcpc_allow_ico');
delete_option('santitech_dcpc_allow_ttf');
delete_site_option('santitech_dcpc_allow_ttf');
delete_option('santitech_dcpc_allow_eot');
delete_site_option('santitech_dcpc_allow_eot');

