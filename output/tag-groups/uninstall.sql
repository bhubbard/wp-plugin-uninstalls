-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tag_group_admin_notice', 'tag_group_shortcode_widget', 'tag_group_shortcode_enqueue_always', 'tag_group_tags_filter', 'tag_group_reset_when_uninstall', 'tag_group_sample_page_id', 'tag_group_taxonomy', 'tag_group_base_first_activation_time', 'tag_group_labels', 'tag_group_ids', 'max_tag_group_id', 'chatty_mango_cache', 'term_group_labels', 'tag_group_group_languages', 'classic-editor-replace');
DELETE FROM wp_options WHERE option_name LIKE 'term_group_labels_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cm_term_group_array');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cm_term_group_array');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cm_term_group_array');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cm_term_group_array');

