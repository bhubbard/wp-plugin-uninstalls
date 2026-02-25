-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TMD_Amazon_Access_Key', 'TMD_Amazon_Secret_Access_Key', 'TMD_Amazon_Associate_Tag', 'TMD_Button_Text', 'Tracking_ID');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Aff_active', 'TMD-rating', 'TMD-asin', 'TMD-reviews', 'TMD-price', 'TMD-images', 'TMD-time');
DELETE FROM wp_usermeta WHERE meta_key IN ('Aff_active', 'TMD-rating', 'TMD-asin', 'TMD-reviews', 'TMD-price', 'TMD-images', 'TMD-time');
DELETE FROM wp_termmeta WHERE meta_key IN ('Aff_active', 'TMD-rating', 'TMD-asin', 'TMD-reviews', 'TMD-price', 'TMD-images', 'TMD-time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Aff_active', 'TMD-rating', 'TMD-asin', 'TMD-reviews', 'TMD-price', 'TMD-images', 'TMD-time');

