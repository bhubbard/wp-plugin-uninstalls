<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rwstripe_show_excerpts');
delete_site_option('rwstripe_show_excerpts');
delete_option('rwstripe_collect_password');
delete_site_option('rwstripe_collect_password');
delete_option('rwstripe_stripe_account_id');
delete_site_option('rwstripe_stripe_account_id');
delete_option('rwstripe_stripe_access_token');
delete_site_option('rwstripe_stripe_access_token');
delete_option('rwstripe_stripe_publishable_key');
delete_site_option('rwstripe_stripe_publishable_key');
delete_option('rwstripe_stripe_environment');
delete_site_option('rwstripe_stripe_environment');
delete_option('rwstripe_disconnected_accounts');
delete_site_option('rwstripe_disconnected_accounts');

// Delete Transients
delete_transient('rwstripe-admin-notice');
delete_site_transient('rwstripe-admin-notice');

