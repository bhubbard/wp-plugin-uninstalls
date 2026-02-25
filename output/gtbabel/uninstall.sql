-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtbabel_url_settings', 'gtbabel_plugin_version', 'gtbabel_license_key', 'gtbabel_public_urls', 'gtbabel_auto_grab_sitemap_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gtbabel_alt_lng', 'gtbabel_prevent_lngs', 'gtbabel__email_notifications_discovered_last_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('gtbabel_alt_lng', 'gtbabel_prevent_lngs', 'gtbabel__email_notifications_discovered_last_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('gtbabel_alt_lng', 'gtbabel_prevent_lngs', 'gtbabel__email_notifications_discovered_last_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gtbabel_alt_lng', 'gtbabel_prevent_lngs', 'gtbabel__email_notifications_discovered_last_time');

