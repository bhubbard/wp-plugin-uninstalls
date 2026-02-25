-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stionic-categories-hide', 'stionic_onesignal', 'stionic_categories', 'stionic_settings', 'stionic_media');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stionic_post_format', '_stionic_exclude_featured', '_show_in_application', '_stionic_future_notification', '_stionic_required_rewards_ads', '_ipa_disable_ads');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stionic_post_format', '_stionic_exclude_featured', '_show_in_application', '_stionic_future_notification', '_stionic_required_rewards_ads', '_ipa_disable_ads');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stionic_post_format', '_stionic_exclude_featured', '_show_in_application', '_stionic_future_notification', '_stionic_required_rewards_ads', '_ipa_disable_ads');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stionic_post_format', '_stionic_exclude_featured', '_show_in_application', '_stionic_future_notification', '_stionic_required_rewards_ads', '_ipa_disable_ads');

