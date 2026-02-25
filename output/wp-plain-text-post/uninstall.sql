-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpplainpost_user_roles', 'wpplainpost_post_types', 'wpplainpost_post_allowed_tags');

