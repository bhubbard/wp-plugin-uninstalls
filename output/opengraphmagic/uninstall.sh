#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opengraphmagic_service_options'
wp option delete 'opengraphmagic_ttl'
wp option delete 'opengraphmagic_rewrite_rules_flag'
wp option delete 'opengraphmagic_activated'
wp option delete 'opengraphmagic_show_thank_you'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opengraphmagic_image_creation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opengraphmagic_image_creation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opengraphmagic_image_creation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opengraphmagic_image_creation_time'"
