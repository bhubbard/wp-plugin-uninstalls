#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pojo_a11y_toolbar'
wp option delete 'pojo_a11y_focusable'
wp option delete 'pojo_a11y_remove_link_target'
wp option delete 'pojo_a11y_add_role_links'
wp option delete 'pojo_a11y_save'
wp option delete 'pojo_a11y_save_expiration'
wp option delete 'pojo_a11y_skip_to_content_link'
wp option delete 'pojo_a11y_skip_to_content_link_element_id'
wp option delete 'pojo_a11y_toolbar_button_sitemap_link'
wp option delete 'pojo_a11y_toolbar_button_help_link'
wp option delete 'pojo_a11y_toolbar_button_feedback_link'
wp option delete 'ea11y_subscription_id'
wp option delete 'ea11y_accessibility_statement_data'
wp option delete 'ea11y_widget_icon_settings'
wp option delete 'elementor_connect_site_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed'"

# Delete Transients
wp transient delete 'elementor_ea11y_campaign'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_a11y_elementor_install_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_a11y_elementor_install_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_a11y_elementor_install_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_a11y_elementor_install_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ea11y-scanner-heading-issues-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ea11y-scanner-heading-issues-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ea11y-scanner-heading-issues-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ea11y-scanner-heading-issues-dismissed'"
