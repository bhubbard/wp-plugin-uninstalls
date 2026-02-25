-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wiseagent_options', 'wiseagent_hcaptcha_options', 'wiseagent_recaptcha_options', 'wiseagent_content_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('designation', 'event_date', 'event_location', 'event_start_time', 'event_button_text', 'event_url', 'event_start_time_iso');
DELETE FROM wp_usermeta WHERE meta_key IN ('designation', 'event_date', 'event_location', 'event_start_time', 'event_button_text', 'event_url', 'event_start_time_iso');
DELETE FROM wp_termmeta WHERE meta_key IN ('designation', 'event_date', 'event_location', 'event_start_time', 'event_button_text', 'event_url', 'event_start_time_iso');
DELETE FROM wp_commentmeta WHERE meta_key IN ('designation', 'event_date', 'event_location', 'event_start_time', 'event_button_text', 'event_url', 'event_start_time_iso');

