-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('news_list_shortcode_display_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('news_list_shortcode_display_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('news_list_shortcode_display_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('news_list_shortcode_display_date');

