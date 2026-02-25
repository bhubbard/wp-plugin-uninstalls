#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byconsolecusgreeting_card_one_check_box'
wp option delete 'byconsolecusgreeting_card_two_check_box'
wp option delete 'byconsolecusgreeting_card_three_check_box'
wp option delete 'byconsolecusgreeting_card_four_check_box'
wp option delete 'byconsolecusgreeting_card_option_one_text'
wp option delete 'byconsolecusgreeting_card_pdf_one'
wp option delete 'byconsolecusgreeting_card_option_two_text'
wp option delete 'byconsolecusgreeting_card_pdf_two'
wp option delete 'byconsolecusgreeting_card_option_three_text'
wp option delete 'byconsolecusgreeting_card_pdf_three'
wp option delete 'byconsolecusgreeting_card_option_four_text'
wp option delete 'byconsolecusgreeting_card_pdf_four'
wp option delete 'byconsolecusgreeting_card_option_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_byconsole_free_plugin_greeting_card_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_byconsole_free_plugin_greeting_card_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_byconsole_free_plugin_greeting_card_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_byconsole_free_plugin_greeting_card_link'"
