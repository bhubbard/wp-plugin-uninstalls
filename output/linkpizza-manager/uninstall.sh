#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pzz_fullname'
wp option delete 'pzz_username'
wp option delete 'pzz_id'
wp option delete 'pzz_settings'
wp option delete 'pzz_logged_in_user'
wp option delete 'pzz_tracking_only_categories'
wp option delete 'pzz_tracking_only_on_posts_before'
wp option delete 'pzz_indexable_javascript'
wp option delete 'pzz_link_summary_border_color'
wp option delete 'pzz_link_summary_border_width'
wp option delete 'pzz_link_summary_border_padding'
wp option delete 'pzz_link_summary_width'
wp option delete 'pzz_link_summary_link_color'
wp option delete 'pzz_link_summary_enabled'
wp option delete 'pzz_link_summary_position'
wp option delete 'pzz_link_summary_layout_type'
wp option delete 'pzz_link_summary_tag_background_color'
wp option delete 'pzz_link_summary_use_title_text'
wp option delete 'linkPizza_Manager_settings'
wp option delete 'pzz_disabled_categories'

# Clear Cron Jobs
wp cron event delete 'linkpizza_refresh_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkpizza_disabled_domains'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkpizza_disabled_domains'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkpizza_disabled_domains'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkpizza_disabled_domains'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkpizza_tracking_only_domains'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkpizza_tracking_only_domains'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkpizza_tracking_only_domains'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkpizza_tracking_only_domains'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkPizza_tracking_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkPizza_tracking_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkPizza_tracking_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkPizza_tracking_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkPizza_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkPizza_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkPizza_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkPizza_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pzz_link_summary_disabled_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pzz_link_summary_disabled_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pzz_link_summary_disabled_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pzz_link_summary_disabled_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkpizza_disabled_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkpizza_disabled_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkpizza_disabled_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkpizza_disabled_urls'"
