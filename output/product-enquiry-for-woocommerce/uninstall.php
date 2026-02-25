<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdm_privacy_notice_dismissed');
delete_site_option('wdm_privacy_notice_dismissed');
delete_option('wdm_pefree_show_popup_on_next_load');
delete_site_option('wdm_pefree_show_popup_on_next_load');
delete_option('wdm_pefree_activation_time');
delete_site_option('wdm_pefree_activation_time');
delete_option('wdm_pefree_activation_banner_dismissed');
delete_site_option('wdm_pefree_activation_banner_dismissed');
delete_option('wdm_form_data');
delete_site_option('wdm_form_data');

// Delete Transients
delete_transient('wdm_pefree_show_activation_banner');
delete_site_transient('wdm_pefree_show_activation_banner');

