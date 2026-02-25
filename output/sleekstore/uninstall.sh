#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w9ss_addcartnumber'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pageid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'w9ss_autocart'
wp option delete 'w9ss_posttype'
wp option delete 'w9ss_usecss'
wp option delete 'w9ss_pageid'
wp option delete 'w9ss_email_from'
wp option delete 'w9ss_currency'
wp option delete 'w9ss_gotocart'
wp option delete 'w9ss_useamount'
wp option delete 'w9ss_unit'
wp option delete 'w9ss_hidenoinv'
wp option delete 'w9ss_payment_methods'
wp option delete 'w9ss_payment_options'
wp option delete 'w9ss_deliveries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w9ss_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w9ss_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w9ss_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w9ss_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w9ss_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w9ss_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w9ss_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w9ss_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w9ss_inventory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w9ss_inventory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w9ss_inventory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w9ss_inventory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w9ss_useinv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w9ss_useinv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w9ss_useinv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w9ss_useinv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w9ss_useamount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w9ss_useamount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w9ss_useamount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w9ss_useamount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w9ss_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w9ss_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w9ss_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w9ss_limit'"
