-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPAWESOME_ENABLE_CONTEXT_MENUS', 'WPAWESOME_ENABLE_FAST_LOGIN', 'WPAWESOME_ENABLE_HUGE_UPLOAD');

