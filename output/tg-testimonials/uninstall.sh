#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_testimonials_company_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_testimonials_company_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_testimonials_company_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_testimonials_company_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_client-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_client-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_client-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_client-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_website-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_website-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_website-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_website-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_rating'"
