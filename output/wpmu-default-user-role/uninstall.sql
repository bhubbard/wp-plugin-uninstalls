-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cets_default_user_role_setup', 'cets_default_user_role_options', 'dashboard_blog', 'default_user_role');

