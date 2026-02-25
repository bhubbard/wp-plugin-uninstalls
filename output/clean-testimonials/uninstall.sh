#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ct_activated'
wp option delete 'ct_prompted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_company_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_company_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_company_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_company_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'testimonial_client_permission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'testimonial_client_permission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'testimonial_client_permission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'testimonial_client_permission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
