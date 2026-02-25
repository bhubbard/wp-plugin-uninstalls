#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onetap_settings'
wp option delete 'apop_localized_labels'
wp option delete 'onetap_install_timestamp'
wp option delete 'onetap_review_banner_disabled'
wp option delete 'onetap_review_banner_next_show'
wp option delete 'onetap_show_accessibility'
wp option delete 'onetap_select_language'
wp option delete 'onetap_company_name'
wp option delete 'onetap_company_website'
wp option delete 'onetap_business_email'
wp option delete 'onetap_confirmation_checkbox'
wp option delete 'onetap_editor_generator'
wp option delete 'onetap_license_status'
wp option delete 'onetap_modules'
wp option delete 'onetap_general_settings'
wp option delete 'onetap_localized_labels'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
