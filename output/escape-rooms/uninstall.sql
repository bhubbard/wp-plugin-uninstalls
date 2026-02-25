-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erDetailId', 'erBookingId');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('price1', 'price2', 'price3', 'price4', 'price5', 'price6', 'price7', 'price8', 'difficulty', 'terms', 'tagline', 'fullname', 'telephone', 'email', 'datestamp', 'escaperoom');
DELETE FROM wp_usermeta WHERE meta_key IN ('price1', 'price2', 'price3', 'price4', 'price5', 'price6', 'price7', 'price8', 'difficulty', 'terms', 'tagline', 'fullname', 'telephone', 'email', 'datestamp', 'escaperoom');
DELETE FROM wp_termmeta WHERE meta_key IN ('price1', 'price2', 'price3', 'price4', 'price5', 'price6', 'price7', 'price8', 'difficulty', 'terms', 'tagline', 'fullname', 'telephone', 'email', 'datestamp', 'escaperoom');
DELETE FROM wp_commentmeta WHERE meta_key IN ('price1', 'price2', 'price3', 'price4', 'price5', 'price6', 'price7', 'price8', 'difficulty', 'terms', 'tagline', 'fullname', 'telephone', 'email', 'datestamp', 'escaperoom');

