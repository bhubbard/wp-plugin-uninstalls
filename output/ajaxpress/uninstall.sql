-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajaxpress_diagnostic_permission', 'ajaxpress_license', 'ajaxpress_deactivate_feedbacks', 'ajaxpress_migrated_version');
DELETE FROM wp_options WHERE option_name LIKE '%disable_for_admins';
DELETE FROM wp_options WHERE option_name LIKE '%loader_layout';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ajaxpress_tour_completed', 'ajaxpress_tour_mode', 'ajaxpress_tour_dismissed_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('ajaxpress_tour_completed', 'ajaxpress_tour_mode', 'ajaxpress_tour_dismissed_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('ajaxpress_tour_completed', 'ajaxpress_tour_mode', 'ajaxpress_tour_dismissed_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ajaxpress_tour_completed', 'ajaxpress_tour_mode', 'ajaxpress_tour_dismissed_at');

