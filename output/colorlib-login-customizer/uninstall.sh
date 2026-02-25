#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clc-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'colorlib-login-customizer_version'
wp option delete 'colorlib-login-customizer_review_notice'

# Delete Transients
wp transient delete 'clc_review'
wp transient delete 'colorlib-login-customizer_review_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'colorlib-login-customizer_dismiss_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'colorlib-login-customizer_dismiss_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'colorlib-login-customizer_dismiss_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'colorlib-login-customizer_dismiss_notice'"
