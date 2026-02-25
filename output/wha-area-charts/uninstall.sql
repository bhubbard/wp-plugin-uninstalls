-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whaac_boundaries_dataname', 'whaac_boundaries_color', 'whaac_boundaries_appearance', 'whaac_boundaries_fill', 'whaac_boundaries_labels_check', 'whaac_boundaries_data', 'whaac_boundaries_x_labels', 'whaac_grid_lines', 'whaac_boundaries_y_labels', 'whaac_implode_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('whaac_boundaries_dataname', 'whaac_boundaries_color', 'whaac_boundaries_appearance', 'whaac_boundaries_fill', 'whaac_boundaries_labels_check', 'whaac_boundaries_data', 'whaac_boundaries_x_labels', 'whaac_grid_lines', 'whaac_boundaries_y_labels', 'whaac_implode_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('whaac_boundaries_dataname', 'whaac_boundaries_color', 'whaac_boundaries_appearance', 'whaac_boundaries_fill', 'whaac_boundaries_labels_check', 'whaac_boundaries_data', 'whaac_boundaries_x_labels', 'whaac_grid_lines', 'whaac_boundaries_y_labels', 'whaac_implode_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whaac_boundaries_dataname', 'whaac_boundaries_color', 'whaac_boundaries_appearance', 'whaac_boundaries_fill', 'whaac_boundaries_labels_check', 'whaac_boundaries_data', 'whaac_boundaries_x_labels', 'whaac_grid_lines', 'whaac_boundaries_y_labels', 'whaac_implode_data');

