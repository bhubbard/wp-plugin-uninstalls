-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rbu_cancel_force_flash', 'rbu_resize_quality', 'rbu_resize_height', 'rbu_resize_width');

