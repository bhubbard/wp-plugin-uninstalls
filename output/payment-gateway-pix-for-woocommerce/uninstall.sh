#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_lkn_pix_for_woocommerce_settings'
wp option delete 'woocommerce_lkn_pix_for_woocommerce_c6_settings'
wp option delete 'woocommerce_lkn_cielo_pix_for_woocommerce_settings'
wp option delete 'woocommerce_lkn_pix_for_woocommerce_paghiper_settings'
wp option delete 'woocommerce_lkn_rede_pix_for_woocommerce_settings'

# Clear Cron Jobs
wp cron event delete 'lkn_schedule_check_cielo_pix_payment_hook'
wp cron event delete 'lkn_remove_custom_check_cielo_pix_payment_job_hook'
wp cron event delete 'lkn_schedule_check_rede_pix_payment_hook'
wp cron event delete 'lkn_remove_custom_check_rede_pix_payment_job_hook'

