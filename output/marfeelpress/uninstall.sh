#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_on_front'"
wp option delete 'litespeed-cache-conf'
wp option delete 'mrf_availability'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'mrf_activation_redirect'
wp transient delete 'signup_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_marfeelize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_marfeelize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_marfeelize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_marfeelize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrf_amp_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrf_amp_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrf_amp_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrf_amp_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mrf_marfeelizable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mrf_marfeelizable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mrf_marfeelizable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mrf_marfeelizable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'headline'"
