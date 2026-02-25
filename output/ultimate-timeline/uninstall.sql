-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weblizar_timeline_options', 'fa_icons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wct_story_setting', 'wct_timeline_setting', 'fa_field_icon', 'wct_story_date', 'wct_story_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('wct_story_setting', 'wct_timeline_setting', 'fa_field_icon', 'wct_story_date', 'wct_story_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('wct_story_setting', 'wct_timeline_setting', 'fa_field_icon', 'wct_story_date', 'wct_story_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wct_story_setting', 'wct_timeline_setting', 'fa_field_icon', 'wct_story_date', 'wct_story_timestamp');

