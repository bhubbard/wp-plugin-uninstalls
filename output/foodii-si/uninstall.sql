-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foodiisi_restaurant_id', 'foodiisi_reservation_type');

