#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitemap_generator_by_kaboom_license'
wp option delete 'sitemap_generator_exclude_ids'
wp option delete 'sitemap_generator_exclude_post_types'
wp option delete 'form_email_catcher_by_kaboom_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leave_a_review_sitemap_kaboom_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leave_a_review_sitemap_kaboom_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leave_a_review_sitemap_kaboom_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leave_a_review_sitemap_kaboom_'"
