-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resizefly_version', 'resizefly_version_initial', 'resizefly_user_sizes', 'resizefly_restrict_sizes', 'resizefly_sizes', 'resizefly_resized_path', 'resizefly_options', 'update_plugins', 'rzf_notice_shown');

