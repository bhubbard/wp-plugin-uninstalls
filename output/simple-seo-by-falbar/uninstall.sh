#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_name'"
wp option delete '_falbar_ssbf_options_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_falbar_ssbf_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_falbar_ssbf_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_falbar_ssbf_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_falbar_ssbf_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_falbar_ssbf_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_falbar_ssbf_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_falbar_ssbf_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_falbar_ssbf_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_falbar_ssbf_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_falbar_ssbf_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_falbar_ssbf_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_falbar_ssbf_keywords'"
