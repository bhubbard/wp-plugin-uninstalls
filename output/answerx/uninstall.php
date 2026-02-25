<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('answerx_api_key');
delete_site_option('answerx_api_key');
delete_option('answerx_company_info');
delete_site_option('answerx_company_info');
delete_option('answerx_widget_show');
delete_site_option('answerx_widget_show');
delete_option('answerx_company_id');
delete_site_option('answerx_company_id');
delete_option('answerx_installed');
delete_site_option('answerx_installed');
delete_option('answerx_version');
delete_site_option('answerx_version');

