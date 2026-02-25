-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_items_count';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_items_count';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_items_count';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_items_count';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_enable_sidebar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_enable_sidebar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_enable_sidebar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_enable_sidebar';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_intro';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_intro';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_intro';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_intro';

