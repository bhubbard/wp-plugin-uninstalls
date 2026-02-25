-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crispgallery_shortcode', 'crispgallery_cols', 'crispgallery_display', 'crispgallery_border', 'crispgallery_border_color', 'crispgallery_caption_font', 'crispgallery_caption_font_size', 'crispgallery_caption_font_weight', 'crispgallery_caption_font_style', 'crispgallery_caption_font_color', 'vdw_gallery_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('crispgallery_shortcode', 'crispgallery_cols', 'crispgallery_display', 'crispgallery_border', 'crispgallery_border_color', 'crispgallery_caption_font', 'crispgallery_caption_font_size', 'crispgallery_caption_font_weight', 'crispgallery_caption_font_style', 'crispgallery_caption_font_color', 'vdw_gallery_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('crispgallery_shortcode', 'crispgallery_cols', 'crispgallery_display', 'crispgallery_border', 'crispgallery_border_color', 'crispgallery_caption_font', 'crispgallery_caption_font_size', 'crispgallery_caption_font_weight', 'crispgallery_caption_font_style', 'crispgallery_caption_font_color', 'vdw_gallery_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crispgallery_shortcode', 'crispgallery_cols', 'crispgallery_display', 'crispgallery_border', 'crispgallery_border_color', 'crispgallery_caption_font', 'crispgallery_caption_font_size', 'crispgallery_caption_font_weight', 'crispgallery_caption_font_style', 'crispgallery_caption_font_color', 'vdw_gallery_id');

