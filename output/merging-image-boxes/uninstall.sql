-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('merging_image_boxes_1', 'merging_image_boxes_2', 'merging_image_boxes_3', 'merging_image_boxes_4', 'merging_image_boxes_5', 'merging_image_boxes_6', 'merging_image_boxes_7', 'merging_image_boxes_8', 'merging_image_boxes_9', 'merging_image_boxes_10', 'merging_image_boxes_11', 'merging_image_boxes_12', 'merging_image_boxes_13', 'merging_image_boxes_14', 'merging_image_boxes_15', 'merging_image_boxes_16', 'merging_image_boxes_17', 'merging_image_boxes_18', 'merging_image_boxes_19', 'merging_image_boxes_20', 'merging_image_boxes_21', 'merging_image_boxes_22', 'merging_image_boxes_23', 'merging_image_boxes_24');

