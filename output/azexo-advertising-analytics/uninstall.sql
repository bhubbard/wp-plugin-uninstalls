-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aza-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aza-visitor', 'aza-reports', '_aza-visitor', 'aza-phone', '_status', '_amount', '_first_cost', '_hash', 'form_title', 'phone', '_promo_code', 'aza-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('aza-visitor', 'aza-reports', '_aza-visitor', 'aza-phone', '_status', '_amount', '_first_cost', '_hash', 'form_title', 'phone', '_promo_code', 'aza-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('aza-visitor', 'aza-reports', '_aza-visitor', 'aza-phone', '_status', '_amount', '_first_cost', '_hash', 'form_title', 'phone', '_promo_code', 'aza-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aza-visitor', 'aza-reports', '_aza-visitor', 'aza-phone', '_status', '_amount', '_first_cost', '_hash', 'form_title', 'phone', '_promo_code', 'aza-settings');

