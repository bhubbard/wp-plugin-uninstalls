#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_summarizer_aws_access_key'
wp option delete 'ai_summarizer_aws_secret_key'
wp option delete 'ai_summarizer_aws_region'
wp option delete 'ai_summarizer_bedrock_model_id'
wp option delete 'ai_summarizer_summary_speed'
wp option delete 'ai_summarizer_summary_length'
wp option delete 'ai_summarizer_widget_visibility'
wp option delete 'ai_summarizer_post_types'
wp option delete 'ai_summarizer_key'
wp option delete 'ai_summarizer_configuration'
wp option delete 'ai_summarizer_model_type'
wp option delete 'ai_summarizer_widget_colour'
wp option delete 'ai_summarizer_widget_text'
wp option delete 'ai_summarizer_widget_text_two'
wp option delete 'ai_summarizer_widget_position'

# Delete Transients
wp transient delete 'ai_summarizer_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summary_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summary_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summary_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summary_status'"
