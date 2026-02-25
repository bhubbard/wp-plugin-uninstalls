-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byteplugs_login_template', 'byteplugs_login_colors');
DELETE FROM wp_options WHERE option_name LIKE 'byteplugs_login_image_%';

