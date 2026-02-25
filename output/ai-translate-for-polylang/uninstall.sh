#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_translate_new_post'
wp option delete 'ai_translate_prompt'
wp option delete 'ai_translate_llm'
wp option delete 'ai_translate_claude_key'
wp option delete 'ai_translate_claude_model'
wp option delete 'ai_translate_openai_key'
wp option delete 'ai_translate_openai_org'
wp option delete 'ai_translate_openai_model'
wp option delete 'ai_translate_gemini_model'
wp option delete 'ai_translate_gemini_key'

