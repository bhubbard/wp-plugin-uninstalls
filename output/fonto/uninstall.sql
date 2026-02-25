-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%font_source';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%font_source';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%font_source';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%font_source';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%embed_code_font_service';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%embed_code_font_service';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%embed_code_font_service';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%embed_code_font_service';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%embed_code_self_hosted';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%embed_code_self_hosted';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%embed_code_self_hosted';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%embed_code_self_hosted';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%font_name_style';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%font_name_style';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%font_name_style';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%font_name_style';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%font_family_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%font_family_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%font_family_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%font_family_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%font_variations';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%font_variations';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%font_variations';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%font_variations';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_individual';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_individual';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_individual';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_individual';

