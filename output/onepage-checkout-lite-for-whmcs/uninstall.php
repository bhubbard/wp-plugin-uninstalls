<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_onepchli_page_id');
delete_site_option('_onepchli_page_id');
delete_option('_onepchli_selected_template');
delete_site_option('_onepchli_selected_template');
delete_option('csf_demo_mode');
delete_site_option('csf_demo_mode');
delete_option('one-page-whmcs-admin-page');
delete_site_option('one-page-whmcs-admin-page');

