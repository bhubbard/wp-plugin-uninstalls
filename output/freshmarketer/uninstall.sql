-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freshmarketer_project_code', 'freshmarketer_token', 'freshmarketer_auth_token', 'freshmarketer_org_id', 'freshmarketer_project_id', 'freshmarketer_user', 'freshmarketer_user_id', 'freshmarketer_url');

