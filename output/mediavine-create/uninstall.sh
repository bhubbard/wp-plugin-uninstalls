#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MVCP_site_id'
wp option delete 'mv_mcp_version'
wp option delete 'mv_create_version'
wp option delete 'mv_publish_queue'
wp option delete 'mv_queues'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_queue'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'grow_site_uuid'
wp option delete 'grow_journey_status'
wp option delete 'mv_create_db_version'

# Delete Transients
wp transient delete 'mv_create_reset_term_association_locked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mv_create_reset_term_association_locked_%' OR option_name LIKE '_site_transient_mv_create_reset_term_association_locked_%'"
wp transient delete 'mv_create_amazon_provision'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable-jtr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable-jtr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable-jtr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable-jtr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'origin_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'origin_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'origin_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'origin_uri'"
