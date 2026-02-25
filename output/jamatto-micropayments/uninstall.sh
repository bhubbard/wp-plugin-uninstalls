#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FIELD_bid'
wp option delete 'FIELD_ccy'
wp option delete 'FIELD_autodonate'
wp option delete 'FIELD_premium_amount'
wp option delete 'FIELD_premium_caption'
wp option delete 'FIELD_premium_prompt'
wp option delete 'FIELD_premium_color_background'
wp option delete 'FIELD_premium_color_edge'
wp option delete 'FIELD_premium_sticky_purchase'
wp option delete 'FIELD_premium_category_amount'
wp option delete 'FIELD_premium_role_exempt'
wp option delete 'FIELD_donation_amount'
wp option delete 'FIELD_donation_caption'
wp option delete 'FIELD_donation_prompt'
wp option delete 'FIELD_donation_thanks'

