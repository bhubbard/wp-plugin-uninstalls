-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpzabb_global_settings', 'wpzabb_hide_branding', 'wpzoom_force_check_extensions', 'wpzabb_lite_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpzabb-cta-link');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpzabb-cta-link');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpzabb-cta-link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpzabb-cta-link');

