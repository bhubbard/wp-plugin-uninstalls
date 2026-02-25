-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oppia_configs', 'oppia_config_list', 'oppia_api_key', 'oppia_sections', 'oppia_section_qty', 'oppia_newconfig', 'oppia_list_size', 'oppia_title', 'oppia_beforetitle', 'oppia_aftertitle', 'oppia_beforewidget', 'oppia_afterwidget', 'oppia_widget_height');

