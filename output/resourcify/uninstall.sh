#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_template_footer_options'
wp option delete 'resourcify__cur_tab__'
wp option delete '_resourcify_output_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resourcify__cur_tab__'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resourcify__cur_tab__'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resourcify__cur_tab__'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resourcify__cur_tab__'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resourcify_sources'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resourcify_sources'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resourcify_sources'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resourcify_sources'"
