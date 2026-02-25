-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sh_v2_token', 'Activated_Shorthand', 'sh_media_cron_offload', 'sh_regex_list', 'sh_css', 'sh_permalink', 'sh_disable_acf');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('story_path', 'ERROR', 'media_status', 'story_body', 'story_head', 'story_diagnostic', 'story_id', 'abstract', 'no_update', 'extra_html');
DELETE FROM wp_usermeta WHERE meta_key IN ('story_path', 'ERROR', 'media_status', 'story_body', 'story_head', 'story_diagnostic', 'story_id', 'abstract', 'no_update', 'extra_html');
DELETE FROM wp_termmeta WHERE meta_key IN ('story_path', 'ERROR', 'media_status', 'story_body', 'story_head', 'story_diagnostic', 'story_id', 'abstract', 'no_update', 'extra_html');
DELETE FROM wp_commentmeta WHERE meta_key IN ('story_path', 'ERROR', 'media_status', 'story_body', 'story_head', 'story_diagnostic', 'story_id', 'abstract', 'no_update', 'extra_html');

