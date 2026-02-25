-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fast_tag_link_type', 'fast_tag_member_type', 'fast_tag_subscriber_type', '_fastflow_sonod_data', 'fast_tagger_db_version', 'ff_widget_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tag_list', 'tag_color', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('tag_list', 'tag_color', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('tag_list', 'tag_color', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tag_list', 'tag_color', 'first_name', 'last_name');

