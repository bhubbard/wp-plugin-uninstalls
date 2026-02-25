-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('joemobi_api_controllers', 'joemobi_api_base', 'joemobi_api_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsq_thread_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsq_thread_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsq_thread_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsq_thread_id');

