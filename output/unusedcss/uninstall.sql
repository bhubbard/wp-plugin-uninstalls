-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rapidload_license_data', 'rapidload_settings', 'rapidload_do_activation_redirect', 'rapidload_onboard_skipped', 'active_sitewide_plugins', 'rapidload_titan_gear', 'rapidload_privacy_policy_accepted', 'rapidload_cache', 'optml_settings', 'rapidload_cache_disk_updated', 'rapidload_page_cache_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_clear_post_cache_on_update', 'rapidload_js_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_clear_post_cache_on_update', 'rapidload_js_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_clear_post_cache_on_update', 'rapidload_js_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_clear_post_cache_on_update', 'rapidload_js_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_uucss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_uucss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_uucss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_uucss_%';

