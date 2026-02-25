-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('indieblocks_settings', 'indieblocks_webmention_db_version', 'indieblocks_flush_permalinks');
DELETE FROM wp_options WHERE option_name LIKE 'indieblocks:html:%';
DELETE FROM wp_options WHERE option_name LIKE 'indieblocks:mf2:%';
DELETE FROM wp_options WHERE option_name LIKE 'indieblocks:webmention_endpoint:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('indieblocks_webmention_source', 'indieblocks_webmention_kind', 'url', 'webmention_source_url', '_indieblocks_link_preview', 'geo_address', '_indieblocks_weather', '_share_on_mastodon_url', '_share_on_pixelfed_url', 'geo_latitude', 'geo_longitude', '_indieblocks_kind', '_indieblocks_linked_url', 'indieblocks_webmention_avatar', 'avatar', 'avatar_url', '_indieblocks_webmention', '_indieblocks_webmention_status', '_indieblocks_webmention_history');
DELETE FROM wp_usermeta WHERE meta_key IN ('indieblocks_webmention_source', 'indieblocks_webmention_kind', 'url', 'webmention_source_url', '_indieblocks_link_preview', 'geo_address', '_indieblocks_weather', '_share_on_mastodon_url', '_share_on_pixelfed_url', 'geo_latitude', 'geo_longitude', '_indieblocks_kind', '_indieblocks_linked_url', 'indieblocks_webmention_avatar', 'avatar', 'avatar_url', '_indieblocks_webmention', '_indieblocks_webmention_status', '_indieblocks_webmention_history');
DELETE FROM wp_termmeta WHERE meta_key IN ('indieblocks_webmention_source', 'indieblocks_webmention_kind', 'url', 'webmention_source_url', '_indieblocks_link_preview', 'geo_address', '_indieblocks_weather', '_share_on_mastodon_url', '_share_on_pixelfed_url', 'geo_latitude', 'geo_longitude', '_indieblocks_kind', '_indieblocks_linked_url', 'indieblocks_webmention_avatar', 'avatar', 'avatar_url', '_indieblocks_webmention', '_indieblocks_webmention_status', '_indieblocks_webmention_history');
DELETE FROM wp_commentmeta WHERE meta_key IN ('indieblocks_webmention_source', 'indieblocks_webmention_kind', 'url', 'webmention_source_url', '_indieblocks_link_preview', 'geo_address', '_indieblocks_weather', '_share_on_mastodon_url', '_share_on_pixelfed_url', 'geo_latitude', 'geo_longitude', '_indieblocks_kind', '_indieblocks_linked_url', 'indieblocks_webmention_avatar', 'avatar', 'avatar_url', '_indieblocks_webmention', '_indieblocks_webmention_status', '_indieblocks_webmention_history');

