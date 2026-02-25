-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qni_content_index_expiration_timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qni_content_index_timestamp', 'qni_content_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('qni_content_index_timestamp', 'qni_content_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('qni_content_index_timestamp', 'qni_content_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qni_content_index_timestamp', 'qni_content_index');

