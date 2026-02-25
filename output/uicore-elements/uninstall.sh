#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uicore_elements_mailchimp_secret_key'
wp option delete 'uicore_elements_newsletter_service_key'
wp option delete 'uicore_elements_recaptcha_site_key'
wp option delete 'uicore_elements_recaptcha_secret_key'
wp option delete 'elementor_active_kit'
wp option delete 'uicore_connect'
wp option delete 'uicore_elements_installed'
wp option delete 'uicore_elements_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ui_elements_widgetdata_%' OR option_name LIKE '_site_transient_ui_elements_widgetdata_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ui_e_form_widget_settings_%' OR option_name LIKE '_site_transient_ui_e_form_widget_settings_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_description'"
