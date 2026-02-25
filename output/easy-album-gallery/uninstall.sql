-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('egallery_installed', 'egallery_version', 'egallery_notify_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('egallery_gallery_uploads');
DELETE FROM wp_usermeta WHERE meta_key IN ('egallery_gallery_uploads');
DELETE FROM wp_termmeta WHERE meta_key IN ('egallery_gallery_uploads');
DELETE FROM wp_commentmeta WHERE meta_key IN ('egallery_gallery_uploads');

