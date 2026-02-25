-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashpls_branding', 'dashpl_branding', 'dashpls_customization', 'DASHPLS_branding', 'admin_email_lifespan', 'DASHPLS_login_customizer_flush_url');
DELETE FROM wp_options WHERE option_name LIKE 'dashplsb_%';

