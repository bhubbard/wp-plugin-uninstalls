<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgem_smtp_host');
delete_site_option('pgem_smtp_host');
delete_option('pgem_smtp_port');
delete_site_option('pgem_smtp_port');
delete_option('pgem_smtp_encryption_type');
delete_site_option('pgem_smtp_encryption_type');
delete_option('pgem_smtp_authentication');
delete_site_option('pgem_smtp_authentication');
delete_option('pgem_smtp_username');
delete_site_option('pgem_smtp_username');
delete_option('pgem_smtp_password');
delete_site_option('pgem_smtp_password');
delete_option('pgem_smtp_from_email');
delete_site_option('pgem_smtp_from_email');
delete_option('pgem_smtp_from_name');
delete_site_option('pgem_smtp_from_name');

// Delete Transients
delete_transient('pgem-message');
delete_site_transient('pgem-message');
delete_transient('pgem-error');
delete_site_transient('pgem-error');

