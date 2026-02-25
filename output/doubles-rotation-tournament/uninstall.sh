#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doroto_settings'
wp option delete 'doroto_version'
wp option delete 'doroto_show_app_notice'
wp option delete 'doroto_show_activation_notice'
wp option delete 'doroto_main_page_id'
wp option delete 'doroto_help_page_id'
wp option delete 'doroto_example_page_id'
wp option delete 'doroto_privacy_policy_page_id'
wp option delete 'doroto_terms_of_service_page_id'
wp option delete 'doroto_output_form'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_presentation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_presentation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_presentation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_presentation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_access_token_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_access_token_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_access_token_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_access_token_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_refresh_token_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_refresh_token_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_refresh_token_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_refresh_token_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_filter_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_filter_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_filter_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_filter_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_output_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_output_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_output_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_output_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_filter_tournaments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_filter_tournaments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_filter_tournaments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_filter_tournaments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doroto_creator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doroto_creator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doroto_creator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doroto_creator'"
