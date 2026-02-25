#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qa_index_text_color'
wp option delete 'qa_index_bold'
wp option delete 'question_text_color'
wp option delete 'question_bold'
wp option delete 'question_justify'
wp option delete 'answer_text_color'
wp option delete 'answer_bold'
wp option delete 'answer_justify'

