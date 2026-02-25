#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp-pages'
wp option delete 'create_map'
wp option delete 'sitemap_update'
wp option delete 'members'
wp option delete 'groups'
wp option delete 'searches'
wp option delete 'bpp_group_list'
wp option delete 'bpp_group_profile'
wp option delete 'bpp_member_list'
wp option delete 'bpp_member_profile'
wp option delete 'bpp_member_profile_tabs'
wp option delete 'bpp_custom_fields'
wp option delete 'create_schema'
wp option delete 'schema_fields'

