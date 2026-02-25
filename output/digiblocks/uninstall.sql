-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digiblocks_settings', 'digiblocks_fonts_data', 'digiblocks_activation_timestamp', 'digiblocks_review_notice_dismissed', 'digiblocks_inactive_blocks', 'digiblocks_review_notice_dismissed_temporarily', 'digiblocks_active_builders', 'digiblocks_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

