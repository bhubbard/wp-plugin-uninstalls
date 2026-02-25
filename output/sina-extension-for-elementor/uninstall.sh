#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sina_widgets'
wp option delete 'sina_extenders'
wp option delete 'sina_map_apikey'
wp option delete 'sina_mailchimp'
wp option delete 'sina_templates_option'
wp option delete 'sina_ext_pro_recaptcha_key'
wp option delete 'sina_ext_pro_recaptcha_secret_key'
wp option delete 'sina_ext_after_logout_url'
wp option delete 'sina_ext_type'
wp option delete 'sina_ext_pro_license_key'
wp option delete 'sina_ext_license_key'
wp option delete 'sina_ext_pro_validity'
wp option delete 'sina_ext_pro_check'
wp option delete 'sina_extension_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sina_contact_email%'"

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_splocation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_splocation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_splocation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_splocation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sina-ext-template-meta_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sina-ext-template-meta_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sina-ext-template-meta_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sina-ext-template-meta_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sina_visit_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sina_visit_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sina_visit_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sina_visit_counter'"
