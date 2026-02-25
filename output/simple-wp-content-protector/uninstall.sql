-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_content_protector', 'scp_disable_for_logged_in', 'scp_protect_images', 'scp_protect_text_selection', 'scp_protect_print', 'scp_protect_screenshot', 'scp_protect_dev_tools', 'scp_protect_right_click', 'scp_enable_role_restriction', 'scp_allowed_roles', 'scp_excluded_pages', 'scp_alert_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scp_disable_protection');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scp_disable_protection');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scp_disable_protection');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scp_disable_protection');

