-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_artisan', 'newsletter_theme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('newsletter_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('newsletter_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('newsletter_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('newsletter_key');

