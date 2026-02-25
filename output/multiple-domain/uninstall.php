<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multiple-domain-domains');
delete_site_option('multiple-domain-domains');
delete_option('multiple-domain-ignore-default-ports');
delete_site_option('multiple-domain-ignore-default-ports');
delete_option('multiple-domain-add-canonical');
delete_site_option('multiple-domain-add-canonical');

