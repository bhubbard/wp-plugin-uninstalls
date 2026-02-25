#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gpt2wp_secret_key'
wp option delete 'gpt2wp_email'
wp option delete 'gpt2wp_custom_field_1'
wp option delete 'gpt2wp_onboarding_completed'
wp option delete 'gpt2wp_pexel_key'
wp option delete 'gpt2wp_notifications'
wp option delete 'gpt2wp_custom_field_2'
wp option delete 'gpt2wp_custom_field_3'
wp option delete 'gpt2wp_admin_default_post_status'
wp option delete 'gpt2wp_webhook_url'
wp option delete 'easily_post_gpt_company_info'
wp option delete 'easily_post_gpt_categories'
wp option delete 'easily_post_gpt_keyword_groups'
wp option delete 'easily_post_gpt_focus_areas'

# Delete Transients
wp transient delete 'easily_post_gpt_keyword_planner_saved'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
