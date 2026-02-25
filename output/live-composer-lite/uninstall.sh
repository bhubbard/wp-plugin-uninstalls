#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dslc_module_id_count'
wp option delete 'dslc_user'

# Delete Transients
wp transient delete '_dslc_activation_redirect_1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslc_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslc_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslc_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslc_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslc_template_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslc_template_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslc_template_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslc_template_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslc_template_base'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslc_template_base'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslc_template_base'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslc_template_base'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslc_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslc_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslc_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslc_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dslc_post_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dslc_post_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dslc_post_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dslc_post_template'"
