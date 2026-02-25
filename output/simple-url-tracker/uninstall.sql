-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_campain_field_meta_key', '_medium_field_meta_key', '_campain_name_field_meta_key', '_campain_term_field_meta_key', '_campain_content_field_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_campain_field_meta_key', '_medium_field_meta_key', '_campain_name_field_meta_key', '_campain_term_field_meta_key', '_campain_content_field_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_campain_field_meta_key', '_medium_field_meta_key', '_campain_name_field_meta_key', '_campain_term_field_meta_key', '_campain_content_field_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_campain_field_meta_key', '_medium_field_meta_key', '_campain_name_field_meta_key', '_campain_term_field_meta_key', '_campain_content_field_meta_key');

