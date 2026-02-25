<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vicomi_feelbacks_api_key');
delete_site_option('vicomi_feelbacks_api_key');
delete_option('vicomi_activation_redirect');
delete_site_option('vicomi_activation_redirect');
delete_option('vicomi_feelbacks_uuid');
delete_site_option('vicomi_feelbacks_uuid');
delete_option('vicomi_feelbacks_replace');
delete_site_option('vicomi_feelbacks_replace');
delete_option('vicomi_feelbacks_active');
delete_site_option('vicomi_feelbacks_active');
delete_option('vicomi_checkboxes');
delete_site_option('vicomi_checkboxes');
delete_option('vicomi_exclude_pages_id');
delete_site_option('vicomi_exclude_pages_id');

