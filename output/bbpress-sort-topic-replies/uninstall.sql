-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bbp_sort_desc_global', '_bbp_sort_desc_global_no_parent', '_bbp_sort_show_lead_topic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_forum_id', '_bbp_topic_sort_desc', '_bbp_sort_desc', '_bbp_topic_sort_show_lead_topic', '_bbp_topic_sort_show_lead_topic_forum');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_forum_id', '_bbp_topic_sort_desc', '_bbp_sort_desc', '_bbp_topic_sort_show_lead_topic', '_bbp_topic_sort_show_lead_topic_forum');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_forum_id', '_bbp_topic_sort_desc', '_bbp_sort_desc', '_bbp_topic_sort_show_lead_topic', '_bbp_topic_sort_show_lead_topic_forum');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_forum_id', '_bbp_topic_sort_desc', '_bbp_sort_desc', '_bbp_topic_sort_show_lead_topic', '_bbp_topic_sort_show_lead_topic_forum');

