#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wasct_settings'
wp option delete 'wasct_cache_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wasct_user_context_%' OR option_name LIKE '_site_transient_wasct_user_context_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wasct_panel_msg_%' OR option_name LIKE '_site_transient_wasct_panel_msg_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wasct_user_lang_%' OR option_name LIKE '_site_transient_wasct_user_lang_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wasct_user_state_%' OR option_name LIKE '_site_transient_wasct_user_state_%'"
wp transient delete 'wasct_show_tags_button'
wp transient delete 'wasct_show_brands_button'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wasct_variation_selection_%' OR option_name LIKE '_site_transient_wasct_variation_selection_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wasct_search_%' OR option_name LIKE '_site_transient_wasct_search_%'"

