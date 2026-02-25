#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfbt_add_theme_support_menu'
wp option delete 'mfbt_show_customizer'
wp option delete 'mfbt_disable_files_editor'
wp option delete 'mfbt_show_reusable_blocks'
wp option delete 'mfbt_show_navigation_menu'
wp option delete 'mfbt_show_templates'
wp option delete 'mfbt_show_template_parts'

