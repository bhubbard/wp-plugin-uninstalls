-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgmp_options', 'widget_slickgooglemap', 'sgmp_persisted_shortcodes', 'sgmp_update_routine', 'sgmp_layers_markers_export');

