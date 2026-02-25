<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('restusre_general');
delete_site_option('restusre_general');
delete_option('restusre_api');
delete_site_option('restusre_api');
delete_option('restusre_domain_blacklist');
delete_site_option('restusre_domain_blacklist');
delete_option('restusre_email_blacklist');
delete_site_option('restusre_email_blacklist');

