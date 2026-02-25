#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'funnelcockpit_apikey_private'
wp option delete 'funnelcockpit_apikey_public'
wp option delete 'funnelcockpit_funnel_id'
wp option delete 'funnelcockpit_print_head'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_time' OR option_name LIKE '_site_transient_%_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_head' OR option_name LIKE '_site_transient_%_head'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_body' OR option_name LIKE '_site_transient_%_body'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_splitTestsEnabled' OR option_name LIKE '_site_transient_%_splitTestsEnabled'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'funnelpage_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'funnelpage_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'funnelpage_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'funnelpage_id'"
