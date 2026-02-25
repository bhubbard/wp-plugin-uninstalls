-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('data_wishlist_genral', 'data_share_wishlist', 'data_style_wishlist', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pwlp_wishlistf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pwlp_wishlistf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pwlp_wishlistf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pwlp_wishlistf');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

