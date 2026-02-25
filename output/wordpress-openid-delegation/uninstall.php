<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openid_delegation_url');
delete_site_option('openid_delegation_url');
delete_option('openid_delegation_provider');
delete_site_option('openid_delegation_provider');
delete_option('openid_delegation_xrds_location');
delete_site_option('openid_delegation_xrds_location');

