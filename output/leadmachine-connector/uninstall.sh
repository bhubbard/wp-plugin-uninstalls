#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadmachine_gf_forms'
wp option delete 'leadmachine_company_id'
wp option delete 'leadmachine_api_key'
wp option delete 'leadmachine_api_url'
wp option delete 'leadmachine_form_title'
wp option delete 'leadmachine_form_description'
wp option delete 'leadmachine_button_text'
wp option delete 'leadmachine_button_color'
wp option delete 'leadmachine_background_color'
wp option delete 'leadmachine_title_color'
wp option delete 'leadmachine_description_color'
wp option delete 'leadmachine_label_color'
wp option delete 'leadmachine_input_background'
wp option delete 'leadmachine_input_border_color'
wp option delete 'leadmachine_input_text_color'
wp option delete 'leadmachine_success_message'
wp option delete 'leadmachine_gf_enabled'
wp option delete 'leadmachine_gf_default_tags'
wp option delete 'leadmachine_post_sync_enabled'
wp option delete 'leadmachine_post_sync_categories'
wp option delete 'leadmachine_newsletter_title'
wp option delete 'leadmachine_newsletter_description'
wp option delete 'leadmachine_newsletter_button_text'
wp option delete 'leadmachine_newsletter_success_message'
wp option delete 'leadmachine_newsletter_optin_text'
wp option delete 'leadmachine_newsletter_name_label'
wp option delete 'leadmachine_newsletter_email_label'
wp option delete 'leadmachine_categories_last_sync'
wp option delete 'leadmachine_posts_last_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leadmachine_synced_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leadmachine_synced_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leadmachine_synced_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leadmachine_synced_at'"
