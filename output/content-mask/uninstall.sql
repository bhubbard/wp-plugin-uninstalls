-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_mask_allow_styles_download', 'content_mask_custom_styles_download', 'content_mask_allow_scripts_download', 'content_mask_custom_scripts_download', 'content_mask_allow_footer_scripts_download', 'content_mask_custom_footer_scripts_download', 'content_mask_include_return_link', 'content_mask_allow_standard_wp_head_iframe', 'content_mask_disable_iframe_title', 'content_mask_disable_iframe_query_parameter_identifier', 'content_mask_disable_iframe_query_parameter_passthrough', 'content_mask_allow_styles_iframe', 'content_mask_custom_styles_iframe', 'content_mask_allow_scripts_iframe', 'content_mask_custom_scripts_iframe', 'content_mask_allow_footer_scripts_iframe', 'content_mask_custom_footer_scripts_iframe', 'content_mask_return_link_label', 'content_mask_tracking', 'content_mask_user_agent_header', 'content_mask_user_agent');
DELETE FROM wp_options WHERE option_name LIKE 'content_mask_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_mask_role_permissions', 'content_mask_condition_permissions', 'content_mask_enable', 'content_mask_header_scripts_styles', 'content_mask_footer_scripts', 'content_mask_url', 'content_mask_method', 'content_mask_views', 'content_mask_transient_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_mask_role_permissions', 'content_mask_condition_permissions', 'content_mask_enable', 'content_mask_header_scripts_styles', 'content_mask_footer_scripts', 'content_mask_url', 'content_mask_method', 'content_mask_views', 'content_mask_transient_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_mask_role_permissions', 'content_mask_condition_permissions', 'content_mask_enable', 'content_mask_header_scripts_styles', 'content_mask_footer_scripts', 'content_mask_url', 'content_mask_method', 'content_mask_views', 'content_mask_transient_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_mask_role_permissions', 'content_mask_condition_permissions', 'content_mask_enable', 'content_mask_header_scripts_styles', 'content_mask_footer_scripts', 'content_mask_url', 'content_mask_method', 'content_mask_views', 'content_mask_transient_expiration');

