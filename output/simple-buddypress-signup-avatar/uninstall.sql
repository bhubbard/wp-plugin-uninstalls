-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbsa_settings', 'sbsa_plugin_version', 'sbsa_install_date', 'sbsa_updated_date', 'sbsa_review_dismissed', 'sbsa_review_dismissed_until', 'sbsa_review_seen');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('has_custom_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('has_custom_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('has_custom_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('has_custom_avatar');

