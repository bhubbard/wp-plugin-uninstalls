-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('esz-term-filter-type', 'esz-term-color', 'esz-term-color-2', 'esz-term-image-id', '_price', '_stock_status', '_wc_average_rating', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('esz-term-filter-type', 'esz-term-color', 'esz-term-color-2', 'esz-term-image-id', '_price', '_stock_status', '_wc_average_rating', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('esz-term-filter-type', 'esz-term-color', 'esz-term-color-2', 'esz-term-image-id', '_price', '_stock_status', '_wc_average_rating', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('esz-term-filter-type', 'esz-term-color', 'esz-term-color-2', 'esz-term-image-id', '_price', '_stock_status', '_wc_average_rating', '_wp_attachment_image_alt');

