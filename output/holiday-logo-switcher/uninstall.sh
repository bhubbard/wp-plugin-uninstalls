#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whls_default_logo'
wp option delete 'whls_dark_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whls_options_from_date_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whls_options_from_date_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whls_options_from_date_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whls_options_from_date_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whls_options_to_date_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whls_options_to_date_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whls_options_to_date_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whls_options_to_date_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logo_options_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logo_options_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logo_options_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logo_options_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whls_options_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whls_options_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whls_options_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whls_options_image_alt'"
