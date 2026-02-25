<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wphcu_display_footer');
delete_site_option('wphcu_display_footer');
delete_option('wphcu_data');
delete_site_option('wphcu_data');
delete_option('wphcu_count_404');
delete_site_option('wphcu_count_404');
delete_option('wphcu_count_only_unique');
delete_site_option('wphcu_count_only_unique');
delete_option('wphcu_count_admin');
delete_site_option('wphcu_count_admin');
delete_option('wphcu_exclude_ips');
delete_site_option('wphcu_exclude_ips');
delete_option('wphcu_style');
delete_site_option('wphcu_style');
delete_option('wphcu_align');
delete_site_option('wphcu_align');
delete_option('wphcu_css');
delete_site_option('wphcu_css');
delete_option('wphcu_display_credit');
delete_site_option('wphcu_display_credit');
delete_option('wphcu_check_update');
delete_site_option('wphcu_check_update');
delete_option('wphcu_algin');
delete_site_option('wphcu_algin');

