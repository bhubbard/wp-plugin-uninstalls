<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ravatar_auto');
delete_site_option('ravatar_auto');
delete_option('ravatar_size');
delete_site_option('ravatar_size');
delete_option('ravatar_border');
delete_site_option('ravatar_border');
delete_option('ravatar_suffix');
delete_site_option('ravatar_suffix');
delete_option('ravatar_prefix');
delete_site_option('ravatar_prefix');
delete_option('ravatar_noplug');
delete_site_option('ravatar_noplug');
delete_option('ravatar_gravatars');
delete_site_option('ravatar_gravatars');
delete_option('ravatar_rating');
delete_site_option('ravatar_rating');
delete_option('ravatar_email_blank');
delete_site_option('ravatar_email_blank');

