-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srm_settings', 'afm_currency_symbol', 'afm_disable_thum');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('afm-price');
DELETE FROM wp_usermeta WHERE meta_key IN ('afm-price');
DELETE FROM wp_termmeta WHERE meta_key IN ('afm-price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('afm-price');

