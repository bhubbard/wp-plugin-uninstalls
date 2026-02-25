#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notria_ai_suite_provider'
wp option delete 'notria_ai_suite_api_key'
wp option delete 'notria_ai_suite_model'
wp option delete 'notria_ai_suite_chatbot_welcome_message'
wp option delete 'notria_ai_suite_chatbot_color'
wp option delete 'notria_ai_suite_rag_enabled'
wp option delete 'notria_ai_suite_content_language'
wp option delete 'notria_ai_suite_indexed_posts'
wp option delete 'notria_ai_suite_module_content_generator'
wp option delete 'notria_ai_suite_module_chatbot'
wp option delete 'notria_ai_suite_module_form_enhancer'
wp option delete 'notria_ai_suite_embeddings_model'

