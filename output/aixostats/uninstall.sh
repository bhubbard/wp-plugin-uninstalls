#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aixostats_banned_ip'
wp option delete 'aixostats_banned_ip_activer'
wp option delete 'aixostats_ban_admins_activer'
wp option delete 'aixostats_auto_tag_commentators'
wp option delete 'aixostats_google_activer'
wp option delete 'aixostats_google_id'
wp option delete 'aixostats_woopra_activer'
wp option delete 'aixostats_woopra_id'
wp option delete 'aixostats_reinvigorate_activer'
wp option delete 'aixostats_reinvigorate_id'
wp option delete 'aixostats_sitemeter_activer'
wp option delete 'aixostats_sitemeter_id1'
wp option delete 'aixostats_sitemeter_id2'
wp option delete 'aixostats_clicky_activer'
wp option delete 'aixostats_clicky_id'

