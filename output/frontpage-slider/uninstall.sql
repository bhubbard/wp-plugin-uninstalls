-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prva', 'druga', 'treca', 'cetvrta', 'peta', 'selectSlideTheme', 'fpsl_number_of_slides', 'fpNaslov', 'fp_products', 'wishlist', 'compare', '_product_image_gallery', 'selectCat', 'leftRight', 'preporucujemo', 'selected_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('prva', 'druga', 'treca', 'cetvrta', 'peta', 'selectSlideTheme', 'fpsl_number_of_slides', 'fpNaslov', 'fp_products', 'wishlist', 'compare', '_product_image_gallery', 'selectCat', 'leftRight', 'preporucujemo', 'selected_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('prva', 'druga', 'treca', 'cetvrta', 'peta', 'selectSlideTheme', 'fpsl_number_of_slides', 'fpNaslov', 'fp_products', 'wishlist', 'compare', '_product_image_gallery', 'selectCat', 'leftRight', 'preporucujemo', 'selected_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prva', 'druga', 'treca', 'cetvrta', 'peta', 'selectSlideTheme', 'fpsl_number_of_slides', 'fpNaslov', 'fp_products', 'wishlist', 'compare', '_product_image_gallery', 'selectCat', 'leftRight', 'preporucujemo', 'selected_products');

