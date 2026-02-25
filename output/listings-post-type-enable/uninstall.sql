-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ketchupthemes-widget_recent_listings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('add_listing_address_listing_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('add_listing_address_listing_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('add_listing_address_listing_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('add_listing_address_listing_address');

