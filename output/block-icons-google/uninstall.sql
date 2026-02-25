-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('block_icons_redirect_after_activation_option', 'block_icons_active_notices_option');

