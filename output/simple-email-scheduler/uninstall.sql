-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simesc_saved_recipients');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simesc_recipients', '_simesc_subject', '_simesc_status', '_simesc_last_sent', '_simesc_day_of_month', '_simesc_send_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simesc_recipients', '_simesc_subject', '_simesc_status', '_simesc_last_sent', '_simesc_day_of_month', '_simesc_send_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simesc_recipients', '_simesc_subject', '_simesc_status', '_simesc_last_sent', '_simesc_day_of_month', '_simesc_send_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simesc_recipients', '_simesc_subject', '_simesc_status', '_simesc_last_sent', '_simesc_day_of_month', '_simesc_send_time');

