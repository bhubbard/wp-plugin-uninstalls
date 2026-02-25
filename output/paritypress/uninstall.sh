#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parity_campaign_discount_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parity_campaign_discount_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parity_campaign_discount_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parity_campaign_discount_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parity_campaign_discounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parity_campaign_discounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parity_campaign_discounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parity_campaign_discounts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parity_campaign_customizations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parity_campaign_customizations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parity_campaign_customizations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parity_campaign_customizations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parity_campaign_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parity_campaign_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parity_campaign_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parity_campaign_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parity_campaign_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parity_campaign_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parity_campaign_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parity_campaign_end_date'"
