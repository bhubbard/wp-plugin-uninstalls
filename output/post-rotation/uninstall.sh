#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pr_enabled'
wp option delete 'pr_fixed'
wp option delete 'pr_interval'
wp option delete 'pr_enforce_punctuality'
wp option delete 'pr_also_alter_last_modified'
wp option delete 'pr_exclude_if_no_featured_image'
wp option delete 'pr_filter_by_category'
wp option delete 'pr_clean_uninstall'
wp option delete 'pr_included_post_types'
wp option delete 'pr_included_categories'
wp option delete 'pr_latest_rotation_time'

