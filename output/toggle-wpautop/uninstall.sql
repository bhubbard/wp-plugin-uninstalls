-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lp_toggle_wpautop_settings', 'lp_toggle_wpautop_auto');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lp_disable_wpautop');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lp_disable_wpautop');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lp_disable_wpautop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lp_disable_wpautop');

