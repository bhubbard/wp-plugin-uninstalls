<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_kas_protect');
delete_site_option('sp_kas_protect');
delete_option('sp_kas_ajax_key');
delete_site_option('sp_kas_ajax_key');
delete_option('sp_kas_send_log');
delete_site_option('sp_kas_send_log');
delete_option('sp_kas_send_log_to');
delete_site_option('sp_kas_send_log_to');
delete_option('sp_kas_send_log_at');
delete_site_option('sp_kas_send_log_at');
delete_option('sp_kas_log_post');
delete_site_option('sp_kas_log_post');
delete_option('sp_kas_error_url');
delete_site_option('sp_kas_error_url');
delete_option('sp_kas_ajax_head');
delete_site_option('sp_kas_ajax_head');
delete_option('sp_kas_exclude');
delete_site_option('sp_kas_exclude');
delete_option('sp_kas_log_sent');
delete_site_option('sp_kas_log_sent');

