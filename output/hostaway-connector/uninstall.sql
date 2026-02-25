-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('haway_send_site_details', 'haway_listing_page', 'haway_listings_per_page', 'haway_client_id', 'haway_client_secret', 'haway_access_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('haway_shortcode_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('haway_shortcode_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('haway_shortcode_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('haway_shortcode_page');

