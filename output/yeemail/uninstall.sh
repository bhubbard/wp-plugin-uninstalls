#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yemail_pro_id'
wp option delete 'yeemail_edd_setup'
wp option delete 'gform_email_count'
wp option delete 'gform_api_count'
wp option delete 'rg_gforms_message'
wp option delete 'rg_gforms_key'
wp option delete 'gform_version_info'
wp option delete 'rg_gforms_currency'
wp option delete 'rg_gforms_enable_akismet'
wp option delete 'gform_upload_page_slug'
wp option delete 'yeemail_setup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mail_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mail_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mail_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mail_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yeemail_link_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yeemail_link_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yeemail_link_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yeemail_link_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yeemail_custom_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yeemail_custom_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yeemail_custom_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yeemail_custom_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
