#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ideal_widget_data_id'
wp option delete 'ideal_widget_size'
wp option delete 'ideal_widget_button_size'
wp option delete 'ideal_widget_offset_bottom'
wp option delete 'ideal_widget_offset_right'
wp option delete 'ideal_widget_lazy_loading'
wp option delete 'ideal_disable_posts'
wp option delete 'ideal_display_admin'

