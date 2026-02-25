-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gc_general_settings', 'gc_event_attributes', 'gc_advanced_settings', 'gc_pro_features', 'my_timezone_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecfg_activated_on');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecfg_activated_on');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecfg_activated_on');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecfg_activated_on');

