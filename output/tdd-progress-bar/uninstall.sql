-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tdd_pb_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tdd_pb_color', '_tdd_pb_input_method', '_tdd_pb_percentage', '_tdd_pb_custom_color', '_tdd_pb_start', '_tdd_pb_end', '_tdd_pb_percentage_display', '_tdd_pb_xofy_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tdd_pb_color', '_tdd_pb_input_method', '_tdd_pb_percentage', '_tdd_pb_custom_color', '_tdd_pb_start', '_tdd_pb_end', '_tdd_pb_percentage_display', '_tdd_pb_xofy_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tdd_pb_color', '_tdd_pb_input_method', '_tdd_pb_percentage', '_tdd_pb_custom_color', '_tdd_pb_start', '_tdd_pb_end', '_tdd_pb_percentage_display', '_tdd_pb_xofy_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tdd_pb_color', '_tdd_pb_input_method', '_tdd_pb_percentage', '_tdd_pb_custom_color', '_tdd_pb_start', '_tdd_pb_end', '_tdd_pb_percentage_display', '_tdd_pb_xofy_display');

