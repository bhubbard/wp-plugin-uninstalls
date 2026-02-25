#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpac_show_in_menus'
wp option delete 'membee_client_id'
wp option delete 'membee_secret'
wp option delete 'membee_app_id'
wp option delete 'membee_widget_dns'
wp option delete 'wpac_posts_default_restricted_to'
wp option delete 'wpac_pages_default_restricted_to'
wp option delete 'wpac_default_members_redirect'
wp option delete 'wpac_show_posts_in_search'
wp option delete 'wpac_show_post_excerpts_in_search'
wp option delete 'wpac_show_pages_in_search'
wp option delete 'wpac_show_page_excerpts_in_search'
wp option delete 'wpac_members_blog_redirect'
wp option delete 'wpac_members_only_blog'
wp option delete 'wpac_custom_post_types'
wp option delete 'wpac_default_page_state'
wp option delete 'wpac_always_accessible_by'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_state'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s_default_restricted_to'"
wp option delete 'wpac_post_excerpt_text'
wp option delete 'wpac_page_excerpt_text'
wp option delete 'wpac_default_post_state'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_restricted_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_restricted_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_restricted_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_restricted_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_members_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_members_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_members_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_members_redirect_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_nonmembers_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_nonmembers_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_nonmembers_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_nonmembers_redirect_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_is_members_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_is_members_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_is_members_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_is_members_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_is_nonmembers_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_is_nonmembers_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_is_nonmembers_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_is_nonmembers_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_show_excerpt_in_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_show_excerpt_in_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_show_excerpt_in_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_show_excerpt_in_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_show_in_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_show_in_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_show_in_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_show_in_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpac_pass_to_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpac_pass_to_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpac_pass_to_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpac_pass_to_children'"
