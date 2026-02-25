-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_htportfolio_project_details', '_htportfolio_name_id', '_htportfolio_company_id', '_htportfolio_single_team', '_htportfolio_project_detailsp', '_htportfolio_show_project', '_htportfolio_htportfolio_gallery_video', '_htportfolio_por_video');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_htportfolio_project_details', '_htportfolio_name_id', '_htportfolio_company_id', '_htportfolio_single_team', '_htportfolio_project_detailsp', '_htportfolio_show_project', '_htportfolio_htportfolio_gallery_video', '_htportfolio_por_video');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_htportfolio_project_details', '_htportfolio_name_id', '_htportfolio_company_id', '_htportfolio_single_team', '_htportfolio_project_detailsp', '_htportfolio_show_project', '_htportfolio_htportfolio_gallery_video', '_htportfolio_por_video');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_htportfolio_project_details', '_htportfolio_name_id', '_htportfolio_company_id', '_htportfolio_single_team', '_htportfolio_project_detailsp', '_htportfolio_show_project', '_htportfolio_htportfolio_gallery_video', '_htportfolio_por_video');

