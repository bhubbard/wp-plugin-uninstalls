-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcme_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcme_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcme_enable', 'wpcme_purchasable', 'wpcme_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcme_enable', 'wpcme_purchasable', 'wpcme_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcme_enable', 'wpcme_purchasable', 'wpcme_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcme_enable', 'wpcme_purchasable', 'wpcme_urls');

