<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_gdpr_alert_content');
delete_site_option('basic_gdpr_alert_content');
delete_option('basic_gdpr_alert_button_text');
delete_site_option('basic_gdpr_alert_button_text');
delete_option('basic_gdpr_alert_bgColor');
delete_site_option('basic_gdpr_alert_bgColor');
delete_option('basic_gdpr_alert_textColor');
delete_site_option('basic_gdpr_alert_textColor');
delete_option('basic_gdpr_alert_zindex');
delete_site_option('basic_gdpr_alert_zindex');
delete_option('basic_gdpr_alert_fontSize');
delete_site_option('basic_gdpr_alert_fontSize');
delete_option('basic_gdpr_alert_width');
delete_site_option('basic_gdpr_alert_width');

