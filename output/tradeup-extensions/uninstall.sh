#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_bx-item-features'
wp option delete 'widget_bx-item-actions'
wp option delete 'widget_bx-item-slider'
wp option delete 'tuext_fp_installed'
wp option delete 'tuext_dismiss_fp_create'
wp option delete 'sidebars_widgets'
wp option delete 'tradeup_ext_widgets_bk'
wp option delete 'jetpack_active_modules'

