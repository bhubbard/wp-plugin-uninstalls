-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('events_listing_fix_featured', 'events_listing_Options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('events_listing_featured', 'events_listing_url', 'events_listing_date', 'events_listing_end_date', 'book_author', 'book_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('events_listing_featured', 'events_listing_url', 'events_listing_date', 'events_listing_end_date', 'book_author', 'book_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('events_listing_featured', 'events_listing_url', 'events_listing_date', 'events_listing_end_date', 'book_author', 'book_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('events_listing_featured', 'events_listing_url', 'events_listing_date', 'events_listing_end_date', 'book_author', 'book_rating');

