-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vossle_ar_api_key', 'vossle_ar_user_id', 'vos_tryon_button', 'vos_tryon_button_title', 'vos_tryon_button_position', 'vossle_alert_code', 'vossle_alert_msg', 'vossle-plugin-text', 'vos_tryon_button_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vossle_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('vossle_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('vossle_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vossle_url');

