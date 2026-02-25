-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woma_plugin_redirect_on_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woma_workout_exercises');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woma_workout_exercises');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woma_workout_exercises');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woma_workout_exercises');

