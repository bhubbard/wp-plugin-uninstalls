-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bctt-twitter-handle', 'bctt-short-url', 'bctt_disable_css', 'bctt_style_enqueued', 'active_sitewide_plugins', '_bctt_activation_redirect', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_active';
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bctt_has_dismissed_nag', 'bctt_has_dismissed_utm_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('bctt_has_dismissed_nag', 'bctt_has_dismissed_utm_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('bctt_has_dismissed_nag', 'bctt_has_dismissed_utm_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bctt_has_dismissed_nag', 'bctt_has_dismissed_utm_nag');

