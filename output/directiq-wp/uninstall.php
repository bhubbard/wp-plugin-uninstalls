<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('styleform');
delete_site_option('styleform');
delete_option('diq_rest_key');
delete_site_option('diq_rest_key');
delete_option('diq_recheck_authorize');
delete_site_option('diq_recheck_authorize');
delete_option('diq_recheck_fields');
delete_site_option('diq_recheck_fields');
delete_option('diq_recheck_subscription_lists');
delete_site_option('diq_recheck_subscription_lists');
delete_option('diq_add_form_fields');
delete_site_option('diq_add_form_fields');
delete_option('diq_add_subscription_lists');
delete_site_option('diq_add_subscription_lists');
delete_option('sc_style');
delete_site_option('sc_style');
delete_option('sc_redirect_url');
delete_site_option('sc_redirect_url');
delete_option('response_status');
delete_site_option('response_status');
delete_option('sc_hide_form');
delete_site_option('sc_hide_form');
delete_option('diq_date');
delete_site_option('diq_date');

