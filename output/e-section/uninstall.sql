-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('e_section_db_ver', 'print_tag_options', 'export_posts_tag', 'export_posts_no_posts', 'e_sections_additional_sections', 'export_post_tag', 'e_sections_spectal_section_pages', 'dk-test', 'akwt_distribution_circulation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('e_section', 'e_section_date', 'e_section_page', 'e_section_status', 'additional_e_section_date', 'export-posts-date', 'user_title', 'breakout_box', 'e-sec-quote');
DELETE FROM wp_usermeta WHERE meta_key IN ('e_section', 'e_section_date', 'e_section_page', 'e_section_status', 'additional_e_section_date', 'export-posts-date', 'user_title', 'breakout_box', 'e-sec-quote');
DELETE FROM wp_termmeta WHERE meta_key IN ('e_section', 'e_section_date', 'e_section_page', 'e_section_status', 'additional_e_section_date', 'export-posts-date', 'user_title', 'breakout_box', 'e-sec-quote');
DELETE FROM wp_commentmeta WHERE meta_key IN ('e_section', 'e_section_date', 'e_section_page', 'e_section_status', 'additional_e_section_date', 'export-posts-date', 'user_title', 'breakout_box', 'e-sec-quote');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%filters';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%filters';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%filters';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%filters';

