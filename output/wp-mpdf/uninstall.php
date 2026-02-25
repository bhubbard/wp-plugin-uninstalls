<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpdf_theme');
delete_site_option('mpdf_theme');
delete_option('mpdf_geshi');
delete_site_option('mpdf_geshi');
delete_option('mpdf_geshi_linenumbers');
delete_site_option('mpdf_geshi_linenumbers');
delete_option('mpdf_caching');
delete_site_option('mpdf_caching');
delete_option('mpdf_allow_all');
delete_site_option('mpdf_allow_all');
delete_option('mpdf_need_login');
delete_site_option('mpdf_need_login');
delete_option('mpdf_stats');
delete_site_option('mpdf_stats');
delete_option('mpdf_debug');
delete_site_option('mpdf_debug');
delete_option('mpdf_cron_user');
delete_site_option('mpdf_cron_user');
delete_option('mpdf_code_page');
delete_site_option('mpdf_code_page');

// Clear Cron Jobs
wp_clear_scheduled_hook('mpdf_generate_pdfs_hook');

