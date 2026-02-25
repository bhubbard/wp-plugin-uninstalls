-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('profiling_user_permission_1', 'profiling_user_permission_2', 'always_show_profiling', 'allow_get_request', 'override_disable_auto_save', 'override_disable_revisioning');

