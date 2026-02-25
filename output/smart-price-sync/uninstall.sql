-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_price_sync_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pricelabs_listing_id', 'homey_custom_period');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pricelabs_listing_id', 'homey_custom_period');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pricelabs_listing_id', 'homey_custom_period');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pricelabs_listing_id', 'homey_custom_period');

