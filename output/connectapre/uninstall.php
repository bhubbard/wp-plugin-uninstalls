<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('connectapre_business_name');
delete_site_option('connectapre_business_name');
delete_option('connectapre_business_type');
delete_site_option('connectapre_business_type');
delete_option('connectapre_enable_whatsapp');
delete_site_option('connectapre_enable_whatsapp');
delete_option('connectapre_agents_data');
delete_site_option('connectapre_agents_data');
delete_option('connectapre_wizard_completed');
delete_site_option('connectapre_wizard_completed');
delete_option('connectapre_offline_behavior');
delete_site_option('connectapre_offline_behavior');
delete_option('connectapre_primary_number');
delete_site_option('connectapre_primary_number');
delete_option('connectapre_offline_message');
delete_site_option('connectapre_offline_message');
delete_option('connectapre_display_delay');
delete_site_option('connectapre_display_delay');
delete_option('connectapre_scroll_delay');
delete_site_option('connectapre_scroll_delay');
delete_option('connectapre_sap_button_position_data');
delete_site_option('connectapre_sap_button_position_data');
delete_option('connectapre_sap_button_style_data');
delete_site_option('connectapre_sap_button_style_data');
delete_option('connectapre_fallback_primary_number');
delete_site_option('connectapre_fallback_primary_number');
delete_option('connectapre_default_greeting');
delete_site_option('connectapre_default_greeting');
delete_option('connectapre_cta_text');
delete_site_option('connectapre_cta_text');
delete_option('connectapre_hide_when_offline');
delete_site_option('connectapre_hide_when_offline');

