<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('infoforflux_name');
delete_site_option('infoforflux_name');
delete_option('infoforflux_expire_block');
delete_site_option('infoforflux_expire_block');
delete_option('infoforflux_operator_port');
delete_site_option('infoforflux_operator_port');
delete_option('infoforflux_theme');
delete_site_option('infoforflux_theme');
delete_option('infoforflux_renew_reminder');
delete_site_option('infoforflux_renew_reminder');
delete_option('infoforflux_renew_reminder_days');
delete_site_option('infoforflux_renew_reminder_days');
delete_option('infoforflux_wp_repo');
delete_site_option('infoforflux_wp_repo');
delete_option('infoforflux_mysql_repo');
delete_site_option('infoforflux_mysql_repo');
delete_option('infoforflux_mysql_nologbin');
delete_site_option('infoforflux_mysql_nologbin');
delete_option('infoforflux_operator_repo');
delete_site_option('infoforflux_operator_repo');
delete_option('infoforflux_block_height');
delete_site_option('infoforflux_block_height');

// Delete Transients
delete_transient('infoforflux_expiration_notice_dismissed');
delete_site_transient('infoforflux_expiration_notice_dismissed');

