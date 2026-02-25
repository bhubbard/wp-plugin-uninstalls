#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cp24_license_key'
wp option delete 'cp24_license_status'
wp option delete 'cp24_license_data'
wp option delete 'cp24_license_server_url'
wp option delete 'cp24_pro_social_registration'

# Delete Transients
wp transient delete 'cp24_license_valid'
wp transient delete 'cp24_license_valid_backup'
wp transient delete 'cp24_license_status'
wp transient delete 'cp24_license_data'
wp transient delete 'cp24_signup_security_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp24_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp24_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp24_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp24_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp24_is_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp24_is_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp24_is_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp24_is_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
