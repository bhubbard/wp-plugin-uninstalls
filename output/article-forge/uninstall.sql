-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_rewrite_rules';
DELETE FROM wp_options WHERE option_name LIKE '%_ver';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_always_show_toc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_always_show_toc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_always_show_toc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_always_show_toc';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_show_all_sections';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_show_all_sections';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_show_all_sections';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_show_all_sections';

