-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('share_on_mastodon_settings', 'share_on_mastodon_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_state';
DELETE FROM wp_options WHERE option_name LIKE '%_code_verifier';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_share_on_mastodon_url', '_share_on_mastodon_error', '_wp_attachment_image_alt', '_share_on_mastodon', '_share_on_mastodon_status', '_share_on_mastodon_cw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_share_on_mastodon_url', '_share_on_mastodon_error', '_wp_attachment_image_alt', '_share_on_mastodon', '_share_on_mastodon_status', '_share_on_mastodon_cw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_share_on_mastodon_url', '_share_on_mastodon_error', '_wp_attachment_image_alt', '_share_on_mastodon', '_share_on_mastodon_status', '_share_on_mastodon_cw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_share_on_mastodon_url', '_share_on_mastodon_error', '_wp_attachment_image_alt', '_share_on_mastodon', '_share_on_mastodon_status', '_share_on_mastodon_cw');

