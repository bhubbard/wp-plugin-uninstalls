#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_spam_question_filter_db_version'
wp option delete 'wp_spam_question_filter_enable'
wp option delete 'wp_spam_question_filter_questions'
wp option delete 'wp_spam_question_filter_answers'
wp option delete 'wp_spam_question_filter_registration'
wp option delete 'wp_spam_question_filter_prefix'
wp option delete 'wp_spam_question_filter_question'

