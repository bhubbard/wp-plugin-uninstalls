#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oppia_configs'
wp option delete 'oppia_config_list'
wp option delete 'oppia_api_key'
wp option delete 'oppia_sections'
wp option delete 'oppia_section_qty'
wp option delete 'oppia_newconfig'
wp option delete 'oppia_list_size'
wp option delete 'oppia_title'
wp option delete 'oppia_beforetitle'
wp option delete 'oppia_aftertitle'
wp option delete 'oppia_beforewidget'
wp option delete 'oppia_afterwidget'
wp option delete 'oppia_widget_height'

