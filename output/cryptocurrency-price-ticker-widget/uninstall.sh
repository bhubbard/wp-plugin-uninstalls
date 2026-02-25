#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openexchange-api-settings'
wp option delete 'crypto_widgets_initial_save_version'
wp option delete 'ccpw-install-date'
wp option delete 'cpfm_opt_in_choice_crypto'
wp option delete 'ccpw_old_api'
wp option delete 'ccpw_data_save'
wp option delete 'ccpw-p-id'
wp option delete 'ccpw-shortcode'
wp option delete 'ccpw_api_key_expired'
wp option delete 'ccpw_do_activation_redirect'
wp option delete 'ccpw-type'
wp option delete 'ccpw_activation_time'
wp option delete 'ccpw-alreadyRated'
wp option delete 'ccpw-fresh-installation'
wp option delete 'CCPW_FREE_VERSION'
wp option delete 'ccpw-install-check'
wp option delete 'cmc_usd_conversions'
wp option delete 'cmc-dynamic-links'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'ccpw_options'
wp option delete 'cmc_coingecko_api_hits'
wp option delete 'ccpw_widget_settings'
wp option delete 'ccpw_reset_flag'

# Delete Transients
wp transient delete 'ccpw-saved-coindata'
wp transient delete 'ccpw-coins'
wp transient delete 'cmc_usd_conversions'
wp transient delete 'ccpw_btc_price'
wp transient delete 'ccpw_last_check_time'

# Clear Cron Jobs
wp cron event delete 'ccpw_extra_data_update'
wp cron event delete 'cmc_extra_data_update'
wp cron event delete 'celp_extra_data_update'
wp cron event delete 'ccew_extra_data_update'
wp cron event delete 'ccpw_coins_autosave'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticker_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticker_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticker_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticker_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_currencies_for_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_currencies_for_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_currencies_for_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_currencies_for_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show-coins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show-coins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show-coins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show-coins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_currencies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_currencies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_currencies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_currencies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_formatting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_formatting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_formatting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_formatting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccpw_coinexchangeprice_credits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccpw_coinexchangeprice_credits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccpw_coinexchangeprice_credits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccpw_coinexchangeprice_credits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'header_ticker_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'header_ticker_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'header_ticker_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'header_ticker_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ticker_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ticker_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ticker_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ticker_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_changes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_changes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_changes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_changes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'back_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'back_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'back_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'back_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagination_for_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagination_for_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagination_for_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagination_for_table'"
