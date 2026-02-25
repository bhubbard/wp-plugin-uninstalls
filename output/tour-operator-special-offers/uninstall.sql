-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_tour_operators_specials_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('destination_to_special', 'price', 'booking_validity_start', 'booking_validity_end', 'price_type', 'tour_to_special', 'accommodation_to_special', 'travel_dates_start', 'travel_dates_end', 'travel_dates');
DELETE FROM wp_usermeta WHERE meta_key IN ('destination_to_special', 'price', 'booking_validity_start', 'booking_validity_end', 'price_type', 'tour_to_special', 'accommodation_to_special', 'travel_dates_start', 'travel_dates_end', 'travel_dates');
DELETE FROM wp_termmeta WHERE meta_key IN ('destination_to_special', 'price', 'booking_validity_start', 'booking_validity_end', 'price_type', 'tour_to_special', 'accommodation_to_special', 'travel_dates_start', 'travel_dates_end', 'travel_dates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('destination_to_special', 'price', 'booking_validity_start', 'booking_validity_end', 'price_type', 'tour_to_special', 'accommodation_to_special', 'travel_dates_start', 'travel_dates_end', 'travel_dates');

