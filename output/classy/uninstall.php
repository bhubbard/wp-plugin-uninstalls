<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classy_token');
delete_site_option('classy_token');
delete_option('classy_cid');
delete_site_option('classy_cid');
delete_option('classy_org_name');
delete_site_option('classy_org_name');
delete_option('classy_url');
delete_site_option('classy_url');

