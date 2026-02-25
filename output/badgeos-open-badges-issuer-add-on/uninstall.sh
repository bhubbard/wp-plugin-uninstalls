#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'json_api_base'
wp option delete 'badgeos_obi_issuer_public_evidence'
wp option delete 'badgeos_obi_issuer_org_name'
wp option delete 'badgeos_obi_issuer_org_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'badgeos_obi_issuer_org_%'"
wp option delete 'json_api_controllers'
wp option delete 'badgeos_obi_issuer_alt_email'
wp option delete 'badgeos_obi_issuer_org_description'
wp option delete 'badgeos_obi_issuer_org_image'
wp option delete 'badgeos_obi_issuer_org_email'
wp option delete 'badgeos_obi_issuer_org_revocationList'
wp option delete 'badgeos_obi_issuer_css_bypass'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_submission_achievement_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badgeos_backpack_pushed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badgeos_backpack_pushed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badgeos_backpack_pushed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badgeos_backpack_pushed'"
