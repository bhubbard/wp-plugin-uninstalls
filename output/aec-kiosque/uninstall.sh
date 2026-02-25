#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aec_load_kiosque_aec_build'
wp option delete 'aec_instance_name'
wp option delete 'aec_extranet_instance_name'
wp option delete 'aec_extranet_api_token'
wp option delete 'aec_etablishment_type'
wp option delete 'aec_course_detail_page_url'
wp option delete 'web_instance_domain'
wp option delete 'aec_template_in_use'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arc_extranet_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arc_extranet_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arc_extranet_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arc_extranet_domain'"
