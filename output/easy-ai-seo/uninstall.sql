-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyaiseo_api_key', 'easyaiseo_model', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easyaiseo_keywords', '_easyaibloggen_preferred_keyword', '_wp_attachment_image_alt', '_ea_seo_meta_title', '_ea_seo_meta_description', '_ea_seo_canonical_url', '_ea_seo_og_image', '_easyaiseo_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('easyaiseo_keywords', '_easyaibloggen_preferred_keyword', '_wp_attachment_image_alt', '_ea_seo_meta_title', '_ea_seo_meta_description', '_ea_seo_canonical_url', '_ea_seo_og_image', '_easyaiseo_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('easyaiseo_keywords', '_easyaibloggen_preferred_keyword', '_wp_attachment_image_alt', '_ea_seo_meta_title', '_ea_seo_meta_description', '_ea_seo_canonical_url', '_ea_seo_og_image', '_easyaiseo_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easyaiseo_keywords', '_easyaibloggen_preferred_keyword', '_wp_attachment_image_alt', '_ea_seo_meta_title', '_ea_seo_meta_description', '_ea_seo_canonical_url', '_ea_seo_og_image', '_easyaiseo_focus_keyword');

