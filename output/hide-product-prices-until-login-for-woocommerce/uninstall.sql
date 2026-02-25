-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hpulr_restricted_roles', 'hpulr_hidden_price_message', 'hpulr_test_mode', 'hpulr_allowed_countries');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hpulr_custom_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hpulr_custom_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hpulr_custom_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hpulr_custom_message');

