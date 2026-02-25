-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_control_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_control_reviews_dismissed_triggers', 'content_control_reviews_last_dismissed', '_content_control_reviews_already_did', 'restriction_settings', 'data_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_control_reviews_dismissed_triggers', 'content_control_reviews_last_dismissed', '_content_control_reviews_already_did', 'restriction_settings', 'data_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_control_reviews_dismissed_triggers', 'content_control_reviews_last_dismissed', '_content_control_reviews_already_did', 'restriction_settings', 'data_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_control_reviews_dismissed_triggers', 'content_control_reviews_last_dismissed', '_content_control_reviews_already_did', 'restriction_settings', 'data_version');

