#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyio_exactdn_domain'
wp option delete 'easyio_exactdn_verified'
wp option delete 'easyio_exactdn_validation'
wp option delete 'easyio_exactdn_verify_method'
wp option delete 'easyio_exactdn'
wp option delete 'easyio_lazy_load'
wp option delete 'easyio_debug'
wp option delete 'easyio_version'
wp option delete 'easyio_metadata_remove'
wp option delete 'easyio_enable_help'
wp option delete 'easyio_enable_help_notice'
wp option delete 'ewww_image_optimizer_exactdn'
wp option delete 'exactdn_all_the_things'
wp option delete 'exactdn_lossy'
wp option delete 'exactdn_hidpi'
wp option delete 'ewww_image_optimizer_lazy_load'
wp option delete 'ewww_image_optimizer_webp_for_cdn'
wp option delete 'exactdn_prevent_db_queries'
wp option delete 'exactdn_never_been_active'
wp option delete 'easyio_exactdn_checkin'
wp option delete 'easyio_exactdn_local_domain'
wp option delete 'easyio_exactdn_plan_id'
wp option delete 'easyio_exactdn_failures'
wp option delete 'jetpack_boost_status_image-cdn'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
