#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lt_options'
wp option delete 'lt_open_exchange_data'
wp option delete 'lt_set_option'
wp option delete 'lt_set_pages'

# Clear Cron Jobs
wp cron event delete 'lt_open_exchange_rates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lang_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lang_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lang_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lang_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%offer_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%offer_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%offer_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%offer_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%lang_conv_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%lang_conv_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%lang_conv_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lang_conv_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%file_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%file_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%file_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%file_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%tran_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%tran_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%tran_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tran_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%tran_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%tran_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%tran_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%tran_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%translate_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%translate_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%translate_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%translate_level'"
