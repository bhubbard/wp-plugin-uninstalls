-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcpm_default_recipe_course_terms', 'rcpm_default_allergen_ingredients', 'rcpm_sample_recipe_1', 'rcpm_activation_redirect', 'rcpm_permalinks', 'rcpm_tracking_last_send', 'rcpm_settings', 'rcpm_tracking_notice', 'rcpm_status_options', 'rcpm_version_upgraded_from', 'active_sitewide_plugins', 'rcpm_flush_rewrite_rules', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'phases', 'additional_notes', '_is_allergen', '_has_lactose', '_allergen_warning', 'servings', 'prep_time', 'cook_time', 'total_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'phases', 'additional_notes', '_is_allergen', '_has_lactose', '_allergen_warning', 'servings', 'prep_time', 'cook_time', 'total_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'phases', 'additional_notes', '_is_allergen', '_has_lactose', '_allergen_warning', 'servings', 'prep_time', 'cook_time', 'total_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'phases', 'additional_notes', '_is_allergen', '_has_lactose', '_allergen_warning', 'servings', 'prep_time', 'cook_time', 'total_time');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'phase_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'phase_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'phase_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'phase_%';

