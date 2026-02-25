#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssp_permalink'
wp option delete 'ssp_separate_symbol_option'
wp option delete 'ssp_filter_character_option'
wp option delete 'ssp_letter_type_option'
wp option delete 'ssp_filter_words'

