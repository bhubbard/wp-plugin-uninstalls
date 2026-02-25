#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catwalker_custom_taxonomy'
wp option delete 'catwalker_related'
wp option delete 'catwalker_default_taxonomy'
wp option delete 'catwalker_related_include_ids'
wp option delete 'catwalker_related_include_children'
wp option delete 'catwalker_related_exclude_ids'
wp option delete 'catwalker_related_exclude_children'
wp option delete 'catwalker_custom_archive_orderby'
wp option delete 'catwalker_custom_archive_order'
wp option delete 'catwalker_custom_archive_sort'
wp option delete 'catwalker_custom_archive_limit'
wp option delete 'catwalker_post_attributes'
wp option delete 'catwalker_post_attributes_class'

