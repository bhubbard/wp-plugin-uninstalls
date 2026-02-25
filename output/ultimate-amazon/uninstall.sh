#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sis_carousel_settings'
wp option delete 'asinp_aws_public_key'
wp option delete 'asinp_aws_private_key'
wp option delete 'asinp_rnd_amazon_data'
wp option delete 'asinp_aws_associate_tag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon_affiliate_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon_affiliate_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon_affiliate_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon_affiliate_url'"
