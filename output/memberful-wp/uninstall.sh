#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'memberful_wp_activation_redirect'
wp option delete 'memberful_extend_auth_cookie_expiration'
wp option delete 'memberful_acl'
wp option delete 'memberful_posts_available_to_any_registered_user'
wp option delete 'memberful_posts_available_to_anybody_subscribed_to_a_plan'
wp option delete 'memberful_terms_available_to_any_registered_user'
wp option delete 'memberful_terms_available_to_anybody_subscribed_to_a_plan'
wp option delete 'memberful_term_acl'
wp option delete 'memberful_db_version'
wp option delete 'memberful_use_global_marketing'
wp option delete 'memberful_use_global_snippets'
wp option delete 'memberful_default_marketing_content'
wp option delete 'memberful_global_marketing_content'
wp option delete 'memberful_global_marketing_override'
wp option delete 'memberful_embed_enabled'
wp option delete 'memberful_hide_admin_toolbar'
wp option delete 'memberful_block_dashboard_access'
wp option delete 'memberful_filter_account_menu_items'
wp option delete 'memberful_auto_sync_display_names'
wp option delete 'memberful_show_protected_content_in_search'
wp option delete 'memberful_products'
wp option delete 'memberful_subscriptions'
wp option delete 'memberful_feeds'
wp option delete 'memberful_client_id'
wp option delete 'memberful_client_secret'
wp option delete 'memberful_api_key'
wp option delete 'memberful_site'
wp option delete 'memberful_webhook_secret'
wp option delete 'memberful_custom_domain'
wp option delete 'memberful_role_active_customer'
wp option delete 'memberful_role_inactive_customer'
wp option delete 'memberful_plan_role_mappings'
wp option delete 'memberful_add_block_tags_to_rss_feed'
wp option delete 'memberful_error_log'
wp option delete 'memberful_bbpress_restricted_registered_users'
wp option delete 'memberful_bbpress_restricted_subscribed_users'
wp option delete 'memberful_bbpress_protect_forums'
wp option delete 'memberful_bbpress_required_subscription_plans'
wp option delete 'memberful_bbpress_required_downloads'
wp option delete 'memberful_bbpress_send_unauthorized_users_to_homepage'
wp option delete 'memberful_bbpress_send_unauthorized_users_to_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%s'"
wp option delete 'memberful_private_user_feed_plan'
wp option delete 'memberful_use_per_plan_roles'

# Clear Cron Jobs
wp cron event delete 'memberful_wp_cron_sync'
wp cron event delete 'memberful_wp_cron_sync_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'memberful_available_to_any_registered_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'memberful_available_to_any_registered_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'memberful_available_to_any_registered_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'memberful_available_to_any_registered_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'memberful_available_to_anybody_subscribed_to_a_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'memberful_available_to_anybody_subscribed_to_a_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'memberful_available_to_anybody_subscribed_to_a_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'memberful_available_to_anybody_subscribed_to_a_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'memberful_acl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'memberful_acl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'memberful_acl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'memberful_acl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'memberful_private_user_feed_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'memberful_private_user_feed_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'memberful_private_user_feed_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'memberful_private_user_feed_token'"
