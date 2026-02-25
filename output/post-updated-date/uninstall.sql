-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awd_modified_date_color', 'awd_modified_date_font_size', 'awd_modified_date_font_weight', 'awd_modified_date_font_style', 'awd_modified_date_prefix_type', 'awd_modified_date_custom_prefix', 'awd_modified_date_position');

