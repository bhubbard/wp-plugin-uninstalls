-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpfloorplans_floorplan_style', 'wpfloorplans_floorplan_sqft', 'wpfloorplans_floorplan_beds', 'wpfloorplans_floorplan_baths', 'wpfloorplans_floorplan_price', 'wpfloorplans_floorplan_garages', 'wpfloorplans_floorplan_brochure', 'wpfloorplans_floorplan_virtual_tour', 'wpfloorplans_floorplan_floorplan_gallery', 'wpfloorplans_floorplan_photo_gallery', 'wpfloorplans_floorplan_listings_gallery', 'wpfloorplans_floorplan_floors');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpfloorplans_floorplan_style', 'wpfloorplans_floorplan_sqft', 'wpfloorplans_floorplan_beds', 'wpfloorplans_floorplan_baths', 'wpfloorplans_floorplan_price', 'wpfloorplans_floorplan_garages', 'wpfloorplans_floorplan_brochure', 'wpfloorplans_floorplan_virtual_tour', 'wpfloorplans_floorplan_floorplan_gallery', 'wpfloorplans_floorplan_photo_gallery', 'wpfloorplans_floorplan_listings_gallery', 'wpfloorplans_floorplan_floors');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpfloorplans_floorplan_style', 'wpfloorplans_floorplan_sqft', 'wpfloorplans_floorplan_beds', 'wpfloorplans_floorplan_baths', 'wpfloorplans_floorplan_price', 'wpfloorplans_floorplan_garages', 'wpfloorplans_floorplan_brochure', 'wpfloorplans_floorplan_virtual_tour', 'wpfloorplans_floorplan_floorplan_gallery', 'wpfloorplans_floorplan_photo_gallery', 'wpfloorplans_floorplan_listings_gallery', 'wpfloorplans_floorplan_floors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpfloorplans_floorplan_style', 'wpfloorplans_floorplan_sqft', 'wpfloorplans_floorplan_beds', 'wpfloorplans_floorplan_baths', 'wpfloorplans_floorplan_price', 'wpfloorplans_floorplan_garages', 'wpfloorplans_floorplan_brochure', 'wpfloorplans_floorplan_virtual_tour', 'wpfloorplans_floorplan_floorplan_gallery', 'wpfloorplans_floorplan_photo_gallery', 'wpfloorplans_floorplan_listings_gallery', 'wpfloorplans_floorplan_floors');

