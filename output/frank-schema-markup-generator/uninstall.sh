#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scmg_db_version'
wp option delete 'scmg_activation_redirect'
wp option delete 'scmg_enabled_post_types'
wp option delete 'scmg_enabled_pages'
wp option delete 'scmg_enabled_posts'
wp option delete 'scmg_enabled_cpt_items'
wp option delete 'scmg_meta_box_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_csg_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_csg_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_csg_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_csg_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_csg_schema_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_csg_schema_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_csg_schema_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_csg_schema_fields'"
