-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adnk_importer_options', 'adnk_settings_options', 'adn_site_active', 'adnk_import_running');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adkn_guid_post_feed', 'adkn_feed_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('adkn_guid_post_feed', 'adkn_feed_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('adkn_guid_post_feed', 'adkn_feed_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adkn_guid_post_feed', 'adkn_feed_category');

