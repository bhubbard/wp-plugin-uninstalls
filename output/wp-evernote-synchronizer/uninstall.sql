-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpes_evernote_common_token', 'wpes_evernote_udpated_status', 'wpes_evernote_update_suspend', 'wpes_evernote_update_action_interval', 'wpes_evernote_notebook_on', 'wpes_evernote_notebook_key', 'wpes_evernote_exclude_tags', 'wpes_update_time', 'wpes_common_and_user_tokens');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpes_user_evernote_token', '_wpes_evernote_guid', '_wpes_evernote_last_updated', '_wpes_evernote_uploaded_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpes_user_evernote_token', '_wpes_evernote_guid', '_wpes_evernote_last_updated', '_wpes_evernote_uploaded_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpes_user_evernote_token', '_wpes_evernote_guid', '_wpes_evernote_last_updated', '_wpes_evernote_uploaded_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpes_user_evernote_token', '_wpes_evernote_guid', '_wpes_evernote_last_updated', '_wpes_evernote_uploaded_images');

