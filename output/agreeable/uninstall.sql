-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ag_login', 'ag_register', 'ag_fail', 'ag_remember', 'ag_termm', 'ag_url', 'ag_comments', 'ag_lightbox', 'ag_colors', 'bp-pages');

