#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unn_noindex_date'
wp option delete 'unn_noindex_search'
wp option delete 'unn_noindex_pages'
wp option delete 'unn_noindex_cat'
wp option delete 'unn_noindex_tags'
wp option delete 'unn_noindex_auth'
wp option delete 'unn_noindex_paged'
wp option delete 'unn_noindex_admin'
wp option delete 'unn_noindex_login'
wp option delete 'unn_nofollow_pages'
wp option delete 'unn_nofollow_archives'
wp option delete 'unn_nofollow_cats'
wp option delete 'unn_nofollow_register'
wp option delete 'unn_nofollow_login'

