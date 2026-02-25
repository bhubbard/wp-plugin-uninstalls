<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mf_forms_base_url');
delete_site_option('mf_forms_base_url');
delete_option('mf_forms_subscriber_id');
delete_site_option('mf_forms_subscriber_id');

