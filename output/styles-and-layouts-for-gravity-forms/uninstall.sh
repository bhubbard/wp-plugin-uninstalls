#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'stla_licenses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_field_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_form_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_general_settings%'"
wp option delete 'gf_stla_reviews_installed_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_antispam_settings_%'"
wp option delete 'gf_stla_booster_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gf_stla_form_id_material_design_%'"
wp option delete 'gf_stla_select_form_id'
wp option delete 'gf_stla_general_settings'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'gf_stla_welcome_activation_redirect'
wp transient delete 'stla_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gf_stla_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gf_stla_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gf_stla_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gf_stla_reviews_dismissed_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gf_stla_reviews_last_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gf_stla_reviews_last_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gf_stla_reviews_last_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gf_stla_reviews_last_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gf_stla_reviews_already_did'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gf_stla_reviews_already_did'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gf_stla_reviews_already_did'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gf_stla_reviews_already_did'"
