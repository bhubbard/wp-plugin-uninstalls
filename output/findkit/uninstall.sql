-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('findkit_enable_jwt', 'findkit_admin_search_show_settings_link', 'findkit_adminbar', 'findkit_project_id', 'findkit_api_endpoint', 'findkit_api_key', 'findkit_show_superwords_editor', 'findkit_show_content_no_highlight_editor', 'findkit_enable_live_update', 'findkit_override_search_form', 'findkit_pubkey');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_findkit_superwords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_findkit_superwords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_findkit_superwords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_findkit_superwords');

