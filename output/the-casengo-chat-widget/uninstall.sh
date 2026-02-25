#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cas_widget_domain'
wp option delete 'cas_widget_type'
wp option delete 'cas_widget_pos'
wp option delete 'cas_widget_label'
wp option delete 'cas_widget_theme'
wp option delete 'cas_widget_lang'
wp option delete 'cas_widget_lang_id'
wp option delete 'casengo_do_activation_redirect'

