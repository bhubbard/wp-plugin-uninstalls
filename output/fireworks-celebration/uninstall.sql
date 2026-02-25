-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fireworks_active', 'fireworks_type', 'fireworks_colors', 'fireworks_gifs');

