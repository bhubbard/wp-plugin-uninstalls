-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lfzw_fr_listings_url', 'lfzw_encoded_zuid');

