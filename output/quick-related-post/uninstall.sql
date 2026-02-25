-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_related_post_max_number', 'quick_related_post_item_per_slide', 'quick_related_post_headline', 'quick_related_post_title_font_size', 'quick_related_post_title_font_color', 'quick_related_post_title', 'quick_related_post_thumbnail', 'quick_related_post_author', 'quick_related_post_date', 'quick_related_post_excerpt', 'quick_related_post_readmore', 'quick_related_post_style_default', 'quick_related_post_custom_style', 'quick_related_post_version');

