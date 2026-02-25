#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sacwo_review_notice_dismissed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sacwo_active_tab_%' OR option_name LIKE '_site_transient_sacwo_active_tab_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smart_autocomplete_active_tab_%' OR option_name LIKE '_site_transient_smart_autocomplete_active_tab_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_autocomplete_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_autocomplete_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_autocomplete_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_autocomplete_processed'"
