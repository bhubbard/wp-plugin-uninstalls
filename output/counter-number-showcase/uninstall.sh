#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsm_cns_default_settings'
wp option delete 'wpsm_counterbox_default_settings'
wp option delete 'wpsm_cns_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Counter_Meta_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Counter_Meta_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Counter_Meta_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Counter_Meta_Settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manisha_demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manisha_demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manisha_demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manisha_demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manisha_demo_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manisha_demo_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manisha_demo_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manisha_demo_count'"
