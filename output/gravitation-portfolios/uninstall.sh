#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'portfolios_count'
wp option delete 'portfolio_bootstrap'
wp option delete 'portfolio_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolios_post_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolios_post_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolios_post_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolios_post_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolios_post_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolios_post_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolios_post_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolios_post_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolios_post_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolios_post_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolios_post_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolios_post_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ba_re_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolios_post_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolios_post_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolios_post_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolios_post_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolios_post_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolios_post_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolios_post_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolios_post_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolios_post_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolios_post_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolios_post_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolios_post_website'"
