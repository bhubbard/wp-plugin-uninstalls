-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('servv_currency', 'servv_pw_title', 'servv_pw_description', 'servv_pw_avatar', 'servv_shop_cards_settings', 'servv_n8n_event_created_active', 'servv_n8n_event_created_url', 'servv_n8n_event_created_method', 'servv_n8n_event_created_secret', 'servv_n8n_new_booking_active', 'servv_n8n_new_booking_url', 'servv_n8n_new_booking_method', 'servv_n8n_new_booking_secret', 'servv_n8n_canceled_booking_active', 'servv_n8n_canceled_booking_url', 'servv_n8n_canceled_booking_method', 'servv_n8n_canceled_booking_secret', 'servv_stripe_account_id', 'servv_stripe_public_key', 'servv_plugin_secret_key', 'servv_plugin_uuid', 'servv_n8n_cancelled_booking_active', 'servv_n8n_cancelled_booking_url', 'servv_n8n_cancelled_booking_method', 'servv_n8n_cancelled_booking_secret', 'servv_install_status', 'servv_plugin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('servv_event_id', 'servv_event_quantities', 'servv_event_location_type', 'servv_event_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('servv_event_id', 'servv_event_quantities', 'servv_event_location_type', 'servv_event_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('servv_event_id', 'servv_event_quantities', 'servv_event_location_type', 'servv_event_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('servv_event_id', 'servv_event_quantities', 'servv_event_location_type', 'servv_event_type');

