-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aps-content-moderator-cm-settings-data_access_key', 'aps-content-moderator-cm-settings-data_access_url', 'aps-content-moderator-cm-settings_category1-value', 'aps-content-moderator-cm-settings_category2-value', 'aps-content-moderator-cm-settings_category3-value', 'aps-content-moderator-cm-settings_ignore-pii', 'aps-content-moderator-cm-settings_comment-threshold', 'aps-content-moderator-cm-settings_comment-max-length-note', 'aps-content-moderator-cm-settings_comment-field-id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('CmTextResult');
DELETE FROM wp_usermeta WHERE meta_key IN ('CmTextResult');
DELETE FROM wp_termmeta WHERE meta_key IN ('CmTextResult');
DELETE FROM wp_commentmeta WHERE meta_key IN ('CmTextResult');

