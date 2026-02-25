#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nexipilot_faq_provider'
wp option delete 'nexipilot_summary_provider'
wp option delete 'nexipilot_internal_links_provider'
wp option delete 'nexipilot_gemini_api_key'
wp option delete 'nexipilot_gemini_model'
wp option delete 'nexipilot_claude_api_key'
wp option delete 'nexipilot_claude_model'
wp option delete 'nexipilot_grok_api_key'
wp option delete 'nexipilot_grok_model'
wp option delete 'nexipilot_openai_api_key'
wp option delete 'nexipilot_openai_model'
wp option delete 'nexipilot_faq_default_layout'
wp option delete 'nexipilot_ai_provider'
wp option delete 'nexipilot_enable_faq'
wp option delete 'nexipilot_enable_summary'
wp option delete 'nexipilot_enable_internal_links'
wp option delete 'nexipilot_faq_position'
wp option delete 'nexipilot_summary_position'
wp option delete 'nexipilot_enable_debug_logging'
wp option delete 'nexipilot_enable_external_ai_sharing'
wp option delete 'nexipilot_external_ai_position'
wp option delete 'nexipilot_external_ai_chatgpt'
wp option delete 'nexipilot_external_ai_claude'
wp option delete 'nexipilot_external_ai_perplexity'
wp option delete 'nexipilot_external_ai_grok'
wp option delete 'nexipilot_external_ai_copilot'
wp option delete 'nexipilot_external_ai_google'
wp option delete 'nexipilot_external_ai_heading'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nexipilot_external_ai_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nexipilot_faq_%' OR option_name LIKE '_site_transient_nexipilot_faq_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nexipilot_summary_%' OR option_name LIKE '_site_transient_nexipilot_summary_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nexipilot_links_%' OR option_name LIKE '_site_transient_nexipilot_links_%'"
wp transient delete 'nexipilot_openai_validation'
wp transient delete 'nexipilot_claude_validation'
wp transient delete 'nexipilot_gemini_validation'
wp transient delete 'nexipilot_grok_validation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexipilot_faq_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexipilot_faq_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexipilot_faq_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexipilot_faq_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexipilot_faq_display_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexipilot_faq_display_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexipilot_faq_display_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexipilot_faq_display_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nexipilot_faqs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nexipilot_faqs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nexipilot_faqs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nexipilot_faqs'"
