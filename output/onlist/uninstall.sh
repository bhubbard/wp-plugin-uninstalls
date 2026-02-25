#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onlistlists'
wp option delete 'onlistadmin'
wp option delete 'onlistinfo'
wp option delete 'onlist_date_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onlist_other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onlist_other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onlist_other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onlist_other'"
