-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_ttml_head', '_ttml_text_align', '_ttml_color', '_ttml_author_size', '_ttml_job_size', '_ttml_heading_size', '_ttml_text_size', '_ttml_layout', '_ttml_author_bg', '_ttml_original_font');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_ttml_head', '_ttml_text_align', '_ttml_color', '_ttml_author_size', '_ttml_job_size', '_ttml_heading_size', '_ttml_text_size', '_ttml_layout', '_ttml_author_bg', '_ttml_original_font');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_ttml_head', '_ttml_text_align', '_ttml_color', '_ttml_author_size', '_ttml_job_size', '_ttml_heading_size', '_ttml_text_size', '_ttml_layout', '_ttml_author_bg', '_ttml_original_font');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_ttml_head', '_ttml_text_align', '_ttml_color', '_ttml_author_size', '_ttml_job_size', '_ttml_heading_size', '_ttml_text_size', '_ttml_layout', '_ttml_author_bg', '_ttml_original_font');

