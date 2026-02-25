-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enq_me_user_licence', 'enq_me_root_dependancy', 'enq_me_assets_to_enqueue', 'enq_me_assets_ids_to_enqueue');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('enq_me_last_modified');
DELETE FROM wp_usermeta WHERE meta_key IN ('enq_me_last_modified');
DELETE FROM wp_termmeta WHERE meta_key IN ('enq_me_last_modified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('enq_me_last_modified');

