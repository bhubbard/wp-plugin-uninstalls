#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grmlt_text'
wp option delete 'grmlt_diphthongs'
wp option delete 'grmlt_uar_js'
wp option delete 'grmlt_redirect'
wp option delete 'grmlt_enable_excerpts'
wp option delete 'grmlt_excerpt_length'
wp option delete 'grmlt_excerpt_more'
wp option delete 'grmlt_stwords'
wp option delete 'grmlt_one_letter_words'
wp option delete 'grmlt_two_letter_words'
wp option delete 'grmlt_enable_text_analysis'
wp option delete 'grmlt_localize_dates'
wp option delete 'grmlt_date_format'
wp option delete 'grmlt_custom_date_format'
wp option delete 'grmlt_enhance_search'
wp option delete 'grmlt_search_post_types'
wp option delete 'grmlt_accent_insensitive_search'

