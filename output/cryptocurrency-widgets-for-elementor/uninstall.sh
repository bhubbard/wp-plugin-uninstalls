#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccew_initial_save_version'
wp option delete 'ccew-install-date'
wp option delete 'ccew-alreadyRated'
wp option delete 'ccew_activation_time'
wp option delete 'openexchange-api-settings'
wp option delete 'cmc_coingecko_api_hits'
wp option delete 'cpfm_opt_in_choice_crypto'
wp option delete 'ccew-api-settings'
wp option delete 'ccew_data_save'
wp option delete 'ccew_api_key_expired'
wp option delete 'CCEW_FREE_VERSION'
wp option delete 'ccew-fresh-installation'
wp option delete 'cmc_usd_conversions'
wp option delete 'ccew-v'
wp option delete 'ccpw_reset_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Delete Transients
wp transient delete 'ccew-saved-coindata'
wp transient delete 'cmc_usd_conversions'
wp transient delete 'ccew_check_coin_list_after_24hour'

# Clear Cron Jobs
wp cron event delete 'ccew_extra_data_update'
wp cron event delete 'cmc_extra_data_update'
wp cron event delete 'celp_extra_data_update'
wp cron event delete 'ccpw_extra_data_update'

