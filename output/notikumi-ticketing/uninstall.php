<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom/css/three-cols.css');
delete_site_option('custom/css/three-cols.css');
delete_option('custom/css/single-col.css');
delete_site_option('custom/css/single-col.css');
delete_option('custom/css/event-page.css');
delete_site_option('custom/css/event-page.css');
delete_option('custom/css/color-custom.css');
delete_site_option('custom/css/color-custom.css');
delete_option('custom/css/custom-styles.css');
delete_site_option('custom/css/custom-styles.css');
delete_option('ntk_current_template');
delete_site_option('ntk_current_template');
delete_option('ntk_content_key');
delete_site_option('ntk_content_key');
delete_option('ntk_event_key');
delete_site_option('ntk_event_key');
delete_option('ntk_sale_channels_key');
delete_site_option('ntk_sale_channels_key');
delete_option('ntk_events_title_key');
delete_site_option('ntk_events_title_key');
delete_option('ntk_checkout_custom_css_key');
delete_site_option('ntk_checkout_custom_css_key');
delete_option('ntk_action_call_purchase_tickets');
delete_site_option('ntk_action_call_purchase_tickets');
delete_option('ntk_action_call_purchase_tickets_en');
delete_site_option('ntk_action_call_purchase_tickets_en');
delete_option('ntk_events_path_key');
delete_site_option('ntk_events_path_key');
delete_option('ntk_id');
delete_site_option('ntk_id');
delete_option('ntk_events_qt_key');
delete_site_option('ntk_events_qt_key');
delete_option('ntk_venues_key');
delete_site_option('ntk_venues_key');
delete_option('ntk_channels_key');
delete_site_option('ntk_channels_key');
delete_option('ntk_organizations_key');
delete_site_option('ntk_organizations_key');
delete_option('ntk_users_key');
delete_site_option('ntk_users_key');
delete_option('ntk_content_temp_key');
delete_site_option('ntk_content_temp_key');

