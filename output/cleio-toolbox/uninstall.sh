#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'maps-provider'
wp option delete 'places-page-countries'
wp option delete 'exile-thumbnail-purge'
wp option delete 'social-instagram-access-token'
wp option delete 'social-instagram-account-username'
wp option delete 'social-instagram-account-picture'
wp option delete 'social-instagram-account-fullname'
wp option delete 'social-twitter-access-token'
wp option delete 'social-twitter-oauth-token'
wp option delete 'social-twitter-oauth-token-secret'
wp option delete 'cleio-user-exilethemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-zoom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pins-color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-content-type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-filter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max-pins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-filterdatevalue'"
wp option delete 'gmap_key_api'
wp option delete 'cleio_do_activation_redirect'
wp option delete 'loop-content-filter'
wp option delete 'home-highlight'
wp option delete 'address-loop-display'
wp option delete 'rss-content-filter'
wp option delete 'loop-content-type'
wp option delete 'rss-content-type'
wp option delete 'social-fb-page'
wp option delete 'exile-widget-instagram'
wp option delete 'social-twitter'
wp option delete 'social-twitter-access-oauth-token'
wp option delete 'social-twitter-access-oauth-token-secret'

# Delete Transients
wp transient delete 'exile-widget-instagram'
wp transient delete 'exile-widget-twitter'
wp transient delete 'gwebfontslist'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_countrycode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_countrycode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_countrycode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_countrycode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_excluded_loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_excluded_loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_excluded_loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_excluded_loop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_excluded_rss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_excluded_rss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_excluded_rss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_excluded_rss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location'"
