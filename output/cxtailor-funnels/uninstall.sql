-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cxtf_username', 'cxtf_password', 'cxtf_access_token', 'cxtf_workspace_id', 'cxtf_user_id', 'cxtf_token_updated_at');

