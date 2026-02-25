-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lead_call_buttons_options_hide_lead_call_buttons');
DELETE FROM wp_usermeta WHERE meta_key IN ('lead_call_buttons_options_hide_lead_call_buttons');
DELETE FROM wp_termmeta WHERE meta_key IN ('lead_call_buttons_options_hide_lead_call_buttons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lead_call_buttons_options_hide_lead_call_buttons');

