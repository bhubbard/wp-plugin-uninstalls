<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leadster-script-code');
delete_site_option('leadster-script-code');

// Delete Transients
delete_transient('leadster_admin_notice_warning');
delete_site_transient('leadster_admin_notice_warning');
delete_transient('leadster_admin_notice_success');
delete_site_transient('leadster_admin_notice_success');
delete_transient('leadster_admin_notice_error');
delete_site_transient('leadster_admin_notice_error');

