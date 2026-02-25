<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcf7p_enabled');
delete_site_option('pcf7p_enabled');
delete_option('pcf7p_form_id');
delete_site_option('pcf7p_form_id');
delete_option('pcf7p_delay_seconds');
delete_site_option('pcf7p_delay_seconds');
delete_option('pcf7p_width');
delete_site_option('pcf7p_width');
delete_option('pcf7p_trigger_type');
delete_site_option('pcf7p_trigger_type');
delete_option('pcf7p_device_rule');
delete_site_option('pcf7p_device_rule');
delete_option('pcf7p_page_rule_type');
delete_site_option('pcf7p_page_rule_type');
delete_option('pcf7p_overlay_opacity');
delete_site_option('pcf7p_overlay_opacity');
delete_option('pcf7p_animation');
delete_site_option('pcf7p_animation');
delete_option('pcf7p_btn_color');
delete_site_option('pcf7p_btn_color');
delete_option('pcf7p_popup_content');
delete_site_option('pcf7p_popup_content');
delete_option('pcf7p_selected_pages');
delete_site_option('pcf7p_selected_pages');

