-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprev_disable_ssr', 'wprev_mdata_off', 'wprev_best_rating', 'wprev_ext_js', 'wprev_sync_off', 'wprev_site_id', 'wprev_replace', 'wprev_debug', 'wprev_active', 'wprev_api_key', 'wprev_version', '_wprev_sync_modif', '_wprev_sync_lock', 'wprev_last_id', 'wprev_last_modif', 'wprev_last_modif_offset_id', 'wprev_last_modif_2');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wprev_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wprev_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wprev_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wprev_id');

