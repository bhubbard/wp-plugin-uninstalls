#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'marbl_amazon_enabled'
wp option delete 'marbl_ebay_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'marbl_amazon_link_associate_id_%'"
wp option delete 'marbl_general_custom_resources_path'
wp option delete 'marbl_amazon_show_disclaimer'
wp option delete 'marbl_amazon_disclaimer_position'
wp option delete 'marbl_amazon_disclaimer'
wp option delete 'marbl_general_link_show_flags'
wp option delete 'marbl_general_link_open_new_window'
wp option delete 'marbl_general_link_link_nofollow'
wp option delete 'marbl_ebay_default_campaign_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'marbl_ebay_show_disclaimer'
wp option delete 'marbl_ebay_disclaimer'
wp option delete 'marbl_general_include_default_css'
wp option delete 'marbl_ebay_disclaimer_position'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'marbl_ebay_region_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'marbl_ebay_link_partner_id_%'"

