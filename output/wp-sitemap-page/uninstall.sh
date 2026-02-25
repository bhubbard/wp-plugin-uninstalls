#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsp_add_nofollow'
wp option delete 'wsp_posts_by_category'
wp option delete 'wsp_is_display_post_multiple_time'
wp option delete 'wsp_exclude_pages'
wp option delete 'wsp_exclude_cpt_page'
wp option delete 'wsp_exclude_cpt_post'
wp option delete 'wsp_exclude_cpt_archive'
wp option delete 'wsp_exclude_cpt_author'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wsp_exclude_cpt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wsp_exclude_taxonomy_%'"
wp option delete 'wsp_is_exclude_password_protected'
wp option delete 'wsp_is_display_copyright'
wp option delete 'wsp_version_key'

