<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('settings_activecampaign');
delete_site_option('settings_activecampaign');
delete_option('widget_activecampaign_widget');
delete_site_option('widget_activecampaign_widget');
delete_option('activecampaign_notice_index');
delete_site_option('activecampaign_notice_index');

