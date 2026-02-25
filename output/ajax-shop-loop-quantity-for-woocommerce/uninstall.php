<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ASLQ_INSTALLED');
delete_site_option('ASLQ_INSTALLED');
delete_option('ASLQ_VERSION');
delete_site_option('ASLQ_VERSION');

// Delete Transients
delete_transient('aslq_show_admin_notice');
delete_site_transient('aslq_show_admin_notice');

