#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsilitechsp_roles_discounts'
wp option delete 'rsilitechsp_show_save_message'
wp option delete 'rsilitechsp_show_role_badge'
wp option delete 'rsilitechsp_show_original_price'
wp option delete 'rsilitechsp_stack_with_coupons'
wp option delete 'rsilitechsp_apply_to_sale_items'
wp option delete 'rsilitech_simple_pricing_activation_time'
wp option delete 'rsilitech_simple_pricing_notices_shown'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice_dismissed' OR option_name LIKE '_site_transient_%_notice_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_upgrade_notice_dismissed' OR option_name LIKE '_site_transient_%_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_review_notice_dismissed' OR option_name LIKE '_site_transient_%_review_notice_dismissed'"

