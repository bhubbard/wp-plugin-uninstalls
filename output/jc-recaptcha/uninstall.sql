-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('public-key', 'private-key', 'comment_form', 'login_form', 'register_form', 'ninja_form', 'cf7_form', 'is_user_logged');

