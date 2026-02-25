#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dppmc_post'
wp option delete 'dppmc_page'
wp option delete 'dppmc_menu'
wp option delete 'dppmc_installationNewDate'
wp option delete 'ppmc_support_us_now_x'
wp option delete 'ppmc_next_period_ratings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dppmc_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ppmc_remove_discount_notice_xmas_%' OR option_name LIKE '_site_transient_ppmc_remove_discount_notice_xmas_%'"

