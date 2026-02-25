-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lti_tool_options', 'lti_tool_site', 'lti_choices', 'ltisite', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lti_tool_platform_key', 'lti_tool_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('lti_tool_platform_key', 'lti_tool_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('lti_tool_platform_key', 'lti_tool_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lti_tool_platform_key', 'lti_tool_user_id');

