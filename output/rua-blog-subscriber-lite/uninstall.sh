#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rua_blog_subscriber_db_version'
wp option delete 'rua_site_name'
wp option delete 'rua_site_url'
wp option delete 'rua_site_contact_form'
wp option delete 'rua_company_address'
wp option delete 'rua_company_city'
wp option delete 'rua_company_state'
wp option delete 'rua_company_zip'
wp option delete 'rua_company_phone_number'
wp option delete 'rua_from_email_address'
wp option delete 'rua_email_subject'
wp option delete 'rua_email_logo'
wp option delete 'rua_form_header'
wp option delete 'rua_custom_message'
wp option delete 'rua_button_text'
wp option delete 'rua_blog_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
