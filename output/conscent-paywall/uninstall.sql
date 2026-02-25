-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conscent_client_id', 'conscent_sdk_url', 'conscent_paywall_category', 'conscent_api_url', 'conscent_api_key', 'conscent_api_secret', 'conscent_after_logout', 'conscent_after_login', 'conscent_theme_location', 'conscent_content_visibility', 'conscent_default_name', 'conscent_amp_sdk_url', 'conscent_amp_api_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('conscent_post_content_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('conscent_post_content_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('conscent_post_content_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('conscent_post_content_visibility');

