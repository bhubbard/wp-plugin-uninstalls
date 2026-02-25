#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'piri_faq_ai_assistant_company_value'
wp option delete 'piri_faq_ai_assistant_bot_name_value'
wp option delete 'piri_faq_ai_assistant_base_url_value'
wp option delete 'piri_faq_ai_assistant_bot_src_value'
wp option delete 'piri_faq_ai_assistant_bot_inverted_value'
wp option delete 'piri_faq_ai_assistant_primary_color_value'
wp option delete 'piri_faq_ai_assistant_initial_state_value'
wp option delete 'piri_faa_example_setting'
wp option delete 'wpr_example_setting'

