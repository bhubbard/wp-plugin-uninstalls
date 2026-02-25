-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multifaq_color', 'headfont_family', 'multifaq_fontcolor', 'multifaq_fontstyle', 'multifaq_fontweight', 'content_color', 'content_size', 'contentfont_family', 'content_fontcolor', 'content_fontstyle', 'content_fontweight', 'person_color', 'person_size', 'personfont_family', 'person_fontcolor', 'person_fontstyle', 'person_fontweight', 'desig_color', 'desig_size', 'desigfont_family', 'desig_fontcolor', 'desig_fontstyle', 'desig_fontweight', 'multifaq_htype', 'multifaq_expand', 'multifaq_css');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testi_by_name', 'testi_by_desig', '_my_meta_value_key', 'location', 'border', 'border_color', 'shadow_size', 'shadow_blur');
DELETE FROM wp_usermeta WHERE meta_key IN ('testi_by_name', 'testi_by_desig', '_my_meta_value_key', 'location', 'border', 'border_color', 'shadow_size', 'shadow_blur');
DELETE FROM wp_termmeta WHERE meta_key IN ('testi_by_name', 'testi_by_desig', '_my_meta_value_key', 'location', 'border', 'border_color', 'shadow_size', 'shadow_blur');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testi_by_name', 'testi_by_desig', '_my_meta_value_key', 'location', 'border', 'border_color', 'shadow_size', 'shadow_blur');

