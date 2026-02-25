-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgeek_cs_option_ver', 'pgeek_cs_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pgeek_cs_title', '_pgeek_cs_content', '_pgeek_cs_template_for', '_pgeek_cs_display_from');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pgeek_cs_title', '_pgeek_cs_content', '_pgeek_cs_template_for', '_pgeek_cs_display_from');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pgeek_cs_title', '_pgeek_cs_content', '_pgeek_cs_template_for', '_pgeek_cs_display_from');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pgeek_cs_title', '_pgeek_cs_content', '_pgeek_cs_template_for', '_pgeek_cs_display_from');

