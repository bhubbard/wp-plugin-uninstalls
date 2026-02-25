-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyio_exactdn_domain', 'easyio_exactdn_verified', 'easyio_exactdn_validation', 'easyio_exactdn_verify_method', 'easyio_exactdn', 'easyio_lazy_load', 'easyio_debug', 'easyio_version', 'easyio_metadata_remove', 'easyio_enable_help', 'easyio_enable_help_notice', 'ewww_image_optimizer_exactdn', 'exactdn_all_the_things', 'exactdn_lossy', 'exactdn_hidpi', 'ewww_image_optimizer_lazy_load', 'ewww_image_optimizer_webp_for_cdn', 'exactdn_prevent_db_queries', 'exactdn_never_been_active', 'easyio_exactdn_checkin', 'easyio_exactdn_local_domain', 'easyio_exactdn_plan_id', 'easyio_exactdn_failures', 'jetpack_boost_status_image-cdn');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

