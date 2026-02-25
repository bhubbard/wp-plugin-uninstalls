-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crispgrid_shortcode', 'crispgrid_type', 'crispgrid_cols', 'crispgrid_display', 'crispgrid_nop', 'crispgrid_image', 'crispgrid_date', 'crispgrid_author', 'crispgrid_excerpt', 'crispgrid_excerpt_text', 'crispgrid_link', 'crispgrid_link_text', 'crispgrid_bgcolor', 'crispgrid_color', 'crispgrid_bgcolor_hover', 'crispgrid_color_hover');
DELETE FROM wp_usermeta WHERE meta_key IN ('crispgrid_shortcode', 'crispgrid_type', 'crispgrid_cols', 'crispgrid_display', 'crispgrid_nop', 'crispgrid_image', 'crispgrid_date', 'crispgrid_author', 'crispgrid_excerpt', 'crispgrid_excerpt_text', 'crispgrid_link', 'crispgrid_link_text', 'crispgrid_bgcolor', 'crispgrid_color', 'crispgrid_bgcolor_hover', 'crispgrid_color_hover');
DELETE FROM wp_termmeta WHERE meta_key IN ('crispgrid_shortcode', 'crispgrid_type', 'crispgrid_cols', 'crispgrid_display', 'crispgrid_nop', 'crispgrid_image', 'crispgrid_date', 'crispgrid_author', 'crispgrid_excerpt', 'crispgrid_excerpt_text', 'crispgrid_link', 'crispgrid_link_text', 'crispgrid_bgcolor', 'crispgrid_color', 'crispgrid_bgcolor_hover', 'crispgrid_color_hover');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crispgrid_shortcode', 'crispgrid_type', 'crispgrid_cols', 'crispgrid_display', 'crispgrid_nop', 'crispgrid_image', 'crispgrid_date', 'crispgrid_author', 'crispgrid_excerpt', 'crispgrid_excerpt_text', 'crispgrid_link', 'crispgrid_link_text', 'crispgrid_bgcolor', 'crispgrid_color', 'crispgrid_bgcolor_hover', 'crispgrid_color_hover');

