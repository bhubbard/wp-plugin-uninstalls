-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tppdil_disable_description_in_loop', 'tppdil_disable_description_in_mobile', 'tppdil_description_priority', 'tppdil_description_position', 'tppdil_limit_description', 'tppdil_limit_description_len', 'tppdil_exclude_description_from_categories', 'tppdil_exclude_description_from_tags', 'tppdil_exclude_description_from_related', 'tppdil_exclude_description_from_up_sells', 'tppdil_exclude_description_from_shop', 'tppdil_show_product_description', 'tppdil_show_product_short_description', 'tppdil_description_background', 'tppdil_description_color', 'tppdil_description_font_size', 'tppdil_description_text_align', 'tppdil_description_font_weight', 'tppdil_tooltip_background', 'tppdil_tooltip_color', 'tppdil_tooltip_position', 'tppdil_custom_css', 'tppdil_description_margin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tppdil_single_disable', 'tppdil_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('tppdil_single_disable', 'tppdil_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('tppdil_single_disable', 'tppdil_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tppdil_single_disable', 'tppdil_description');

