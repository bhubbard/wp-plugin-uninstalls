-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddyslack_options', 'buddyslack_bp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('buddyslack_activity_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('buddyslack_activity_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('buddyslack_activity_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('buddyslack_activity_setting');

