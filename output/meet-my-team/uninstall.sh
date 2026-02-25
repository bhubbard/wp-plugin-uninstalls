#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_bio_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_bio_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_bio_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_bio_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_biography'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_biography'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_biography'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_biography'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_url'"
