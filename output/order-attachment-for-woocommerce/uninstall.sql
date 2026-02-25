-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phoe_attach_value', 'recently_activated', 'phoe_disc_value', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('my_custom_val');
DELETE FROM wp_usermeta WHERE meta_key IN ('my_custom_val');
DELETE FROM wp_termmeta WHERE meta_key IN ('my_custom_val');
DELETE FROM wp_commentmeta WHERE meta_key IN ('my_custom_val');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

