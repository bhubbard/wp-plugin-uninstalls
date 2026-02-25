-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ai_client_provider_credentials');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'mcp_adapter_sessions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'mcp_adapter_sessions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'mcp_adapter_sessions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'mcp_adapter_sessions');

