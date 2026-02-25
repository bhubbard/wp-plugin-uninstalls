-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('APF_Demo', 'APF_BasicUsage', 'APF_TaxonomyField', 'active_sitewide_plugins', 'apfl_contributors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metabox_text_field', 'image_upload', 'text_field', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('metabox_text_field', 'image_upload', 'text_field', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('metabox_text_field', 'image_upload', 'text_field', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metabox_text_field', 'image_upload', 'text_field', 'dismissed_wp_pointers');

