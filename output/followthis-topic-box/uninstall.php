<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('followthis');
delete_site_option('followthis');
delete_option('ft_verifier');
delete_site_option('ft_verifier');
delete_option('ft_meta_version');
delete_site_option('ft_meta_version');
delete_option('activated_plugin');
delete_site_option('activated_plugin');
delete_option('ft_publisher_is_registered');
delete_site_option('ft_publisher_is_registered');
delete_option('ft_publisher_is_active');
delete_site_option('ft_publisher_is_active');
delete_option('ft_publisher_is_approved');
delete_site_option('ft_publisher_is_approved');
delete_option('ft_publisher_info');
delete_site_option('ft_publisher_info');
delete_option('ft_default_topics');
delete_site_option('ft_default_topics');

