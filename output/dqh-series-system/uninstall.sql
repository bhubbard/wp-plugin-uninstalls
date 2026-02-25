-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DQH_name_type', 'DQH_name', 'DQH_rewite', 'DQH_lang_parent_post', 'DQH_title_in_post', 'DQH_next_post', 'DQH_previous_post', 'DQH_paging_chapter', 'DQH_chapers_per_page', 'DQH_html_list', 'DQH_rewrite');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mts_post_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mts_post_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mts_post_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mts_post_type');

