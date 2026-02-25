-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reamaze_account_id', 'reamaze_version', 'reamaze_account_sso_key', 'reamaze_widget_display', 'reamaze_widget_code', 'reamaze_cue_code', 'reamaze_post_reamaze-kb', 'reamaze_post_reamaze-support');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reamaze-conversation');
DELETE FROM wp_usermeta WHERE meta_key IN ('reamaze-conversation');
DELETE FROM wp_termmeta WHERE meta_key IN ('reamaze-conversation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reamaze-conversation');

