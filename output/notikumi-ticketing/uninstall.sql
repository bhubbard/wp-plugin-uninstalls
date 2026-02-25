-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom/css/three-cols.css', 'custom/css/single-col.css', 'custom/css/event-page.css', 'custom/css/color-custom.css', 'custom/css/custom-styles.css', 'ntk_current_template', 'ntk_content_key', 'ntk_event_key', 'ntk_sale_channels_key', 'ntk_events_title_key', 'ntk_checkout_custom_css_key', 'ntk_action_call_purchase_tickets', 'ntk_action_call_purchase_tickets_en', 'ntk_events_path_key', 'ntk_id', 'ntk_events_qt_key', 'ntk_venues_key', 'ntk_channels_key', 'ntk_organizations_key', 'ntk_users_key', 'ntk_content_temp_key');

