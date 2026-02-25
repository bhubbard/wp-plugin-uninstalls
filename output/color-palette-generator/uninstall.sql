-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpg_options', 'cpg_dominant_color_children');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpg_exclude', '_cpg_show', '_cpg_show_dominant', '_cpg_number_of_colors');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpg_exclude', '_cpg_show', '_cpg_show_dominant', '_cpg_number_of_colors');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpg_exclude', '_cpg_show', '_cpg_show_dominant', '_cpg_number_of_colors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpg_exclude', '_cpg_show', '_cpg_show_dominant', '_cpg_number_of_colors');

