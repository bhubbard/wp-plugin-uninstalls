-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sn_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', 'rank_math_title', 'rank_math_description', 'managesavage-note_page_sn-articlescolumnshidden', 'managesavage-note_page_sn-purchasecolumnshidden', 'managesavage-note_page_sn-lotscolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', 'rank_math_title', 'rank_math_description', 'managesavage-note_page_sn-articlescolumnshidden', 'managesavage-note_page_sn-purchasecolumnshidden', 'managesavage-note_page_sn-lotscolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', 'rank_math_title', 'rank_math_description', 'managesavage-note_page_sn-articlescolumnshidden', 'managesavage-note_page_sn-purchasecolumnshidden', 'managesavage-note_page_sn-lotscolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_seopress_titles_title', '_seopress_titles_desc', 'rank_math_title', 'rank_math_description', 'managesavage-note_page_sn-articlescolumnshidden', 'managesavage-note_page_sn-purchasecolumnshidden', 'managesavage-note_page_sn-lotscolumnshidden');

