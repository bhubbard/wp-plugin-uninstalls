-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_zei-wc_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('usage_limit', '_zei_reward', '_zei_offer', '_zei_profile');
DELETE FROM wp_usermeta WHERE meta_key IN ('usage_limit', '_zei_reward', '_zei_offer', '_zei_profile');
DELETE FROM wp_termmeta WHERE meta_key IN ('usage_limit', '_zei_reward', '_zei_offer', '_zei_profile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('usage_limit', '_zei_reward', '_zei_offer', '_zei_profile');

