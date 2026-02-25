-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prxml_gtin_key', 'prxml_mpn_key', 'prxml_brand_key', 'prxml_feed_slug', 'prxml_provider', 'prxml_refresh_rate', 'prxml_xml_feed_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_assigned_to', '_rating', '_author', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_assigned_to', '_rating', '_author', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_assigned_to', '_rating', '_author', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_assigned_to', '_rating', '_author', 'rating');

