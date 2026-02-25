#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quizCreator_collect_emails'
wp option delete 'quizCreator_show_result_on_page'
wp option delete 'quizCreator_show_subscribe_option'
wp option delete 'quizCreator_text_settings'
wp option delete 'quizCreator_email_override'
wp option delete 'quizCreator_custom_email'
wp option delete 'quizCreator_version'

