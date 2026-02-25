<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiknowledgebase_api_key');
delete_site_option('aiknowledgebase_api_key');
delete_option('aiknowledgebase_assistant_details');
delete_site_option('aiknowledgebase_assistant_details');
delete_option('wmc_redirect');
delete_site_option('wmc_redirect');
delete_option('aiknowledgebase_customize_assistant');
delete_site_option('aiknowledgebase_customize_assistant');

