#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cff_options'
wp option delete 'cscf_options'
wp option delete 'cff_version'
wp option delete 'cscf_version'
wp option delete 'recaptcha_public_key'
wp option delete 'recaptcha_private_key'
wp option delete 'array_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismissed'"
