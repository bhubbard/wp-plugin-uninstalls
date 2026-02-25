<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wavatar_auto');
delete_site_option('wavatar_auto');
delete_option('wavatar_noplug');
delete_site_option('wavatar_noplug');
delete_option('wavatar_size');
delete_site_option('wavatar_size');
delete_option('wavatar_border');
delete_site_option('wavatar_border');
delete_option('wavatar_suffix');
delete_site_option('wavatar_suffix');
delete_option('wavatar_prefix');
delete_site_option('wavatar_prefix');
delete_option('wavatar_gravatars');
delete_site_option('wavatar_gravatars');
delete_option('wavatar_rating');
delete_site_option('wavatar_rating');
delete_option('wavatar_email_blank');
delete_site_option('wavatar_email_blank');

