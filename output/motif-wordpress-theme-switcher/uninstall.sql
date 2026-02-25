-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_motif_theme_switcher', 'motif_gacode');
DELETE FROM wp_options WHERE option_name LIKE 'motif_%';

