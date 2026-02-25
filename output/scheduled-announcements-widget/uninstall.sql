-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saw_scroll_options', 'saw_speed_options', 'saw_trans_options', 'saw_width_options', 'saw_height_options', 'saw_text_color_options', 'saw_link_color_options', 'saw_order_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('saw_start_date', 'saw_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('saw_start_date', 'saw_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('saw_start_date', 'saw_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('saw_start_date', 'saw_end_date');

