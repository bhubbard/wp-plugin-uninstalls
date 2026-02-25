-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('relive_classic_editor_enable', 'relive_classic_widgets_enable', 'relive_classic_frontend_gutenberg_stylesheet');

