-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dae_field_labels', 'dae_fields', 'dae_messages', 'dae_subscribers_per_page', 'dae_options', 'dae_db_version', 'dae_htaccess_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dae_settings', 'dae_shortcode', 'dae_duplicate_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('dae_settings', 'dae_shortcode', 'dae_duplicate_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('dae_settings', 'dae_shortcode', 'dae_duplicate_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dae_settings', 'dae_shortcode', 'dae_duplicate_id', '_wp_attachment_image_alt');

