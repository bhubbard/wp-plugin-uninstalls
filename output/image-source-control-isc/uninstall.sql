-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isc_options', 'isc_storage', 'isc_unused_images_total_items', 'isc_scanner_log', 'isc-unused-attachments-stats', 'isc-show-missing-sources-warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', 'isc_image_posts', 'isc_post_images', 'isc_image_source_own', 'isc_image_source', 'isc_image_source_url', 'isc_image_licence', '_wp_attached_file', 'isc_newsletter_closed', 'isc_newsletter_subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', 'isc_image_posts', 'isc_post_images', 'isc_image_source_own', 'isc_image_source', 'isc_image_source_url', 'isc_image_licence', '_wp_attached_file', 'isc_newsletter_closed', 'isc_newsletter_subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', 'isc_image_posts', 'isc_post_images', 'isc_image_source_own', 'isc_image_source', 'isc_image_source_url', 'isc_image_licence', '_wp_attached_file', 'isc_newsletter_closed', 'isc_newsletter_subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', 'isc_image_posts', 'isc_post_images', 'isc_image_source_own', 'isc_image_source', 'isc_image_source_url', 'isc_image_licence', '_wp_attached_file', 'isc_newsletter_closed', 'isc_newsletter_subscribed');

