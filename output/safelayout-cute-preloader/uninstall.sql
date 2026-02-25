-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safelayout_preloader_options', 'safelayout_preloader_options_meta', 'safelayout_preloader_options_upgrade', 'safelayout_preloader_options_rate');
DELETE FROM wp_options WHERE option_name LIKE 'safelayout_preloader_special_post%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('safelayout_preloader_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('safelayout_preloader_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('safelayout_preloader_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('safelayout_preloader_shortcode');

