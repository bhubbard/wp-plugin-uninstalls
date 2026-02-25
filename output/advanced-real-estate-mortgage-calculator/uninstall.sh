#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aremc_price'
wp option delete 'aremc_down'
wp option delete 'aremc_interest'
wp option delete 'aremc_years'
wp option delete 'aremc_txt_selling_price'
wp option delete 'aremc_txt_down_payment'
wp option delete 'aremc_txt_interest_rate'
wp option delete 'aremc_txt_years'
wp option delete 'aremc_txt_monthly_payment'
wp option delete 'aremc_txt_instructions'
wp option delete 'aremc_txt_money_symbol'

