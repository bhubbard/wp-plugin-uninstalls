-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sync_civicrm_custom_post_id', 'sync_civi_profile_api_profile', 'sync_civi_profile_api_entity', 'sync_civi_profile_api_get', 'sync_civi_profile_api_get_count', 'sync_civi_profile_id_field', 'sync_civi_profile_title_field', 'sync_civi_profile_sync_interval', 'sync_civi_profile_already_registered', 'sync_civi_profile_post_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sync_civicrm_custom_post_id', 'sync_civi_profile_api_profile', 'sync_civi_profile_api_entity', 'sync_civi_profile_api_get', 'sync_civi_profile_api_get_count', 'sync_civi_profile_id_field', 'sync_civi_profile_title_field', 'sync_civi_profile_sync_interval', 'sync_civi_profile_already_registered', 'sync_civi_profile_post_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sync_civicrm_custom_post_id', 'sync_civi_profile_api_profile', 'sync_civi_profile_api_entity', 'sync_civi_profile_api_get', 'sync_civi_profile_api_get_count', 'sync_civi_profile_id_field', 'sync_civi_profile_title_field', 'sync_civi_profile_sync_interval', 'sync_civi_profile_already_registered', 'sync_civi_profile_post_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sync_civicrm_custom_post_id', 'sync_civi_profile_api_profile', 'sync_civi_profile_api_entity', 'sync_civi_profile_api_get', 'sync_civi_profile_api_get_count', 'sync_civi_profile_id_field', 'sync_civi_profile_title_field', 'sync_civi_profile_sync_interval', 'sync_civi_profile_already_registered', 'sync_civi_profile_post_name');

